import * as React from 'react';
import MenuIcon from '@mui/icons-material/Menu';
import FacebookIcon from '@mui/icons-material/Facebook';
import YouTubeIcon from '@mui/icons-material/YouTube';
import TwitterIcon from '@mui/icons-material/Twitter';
import { TextField } from '@mui/material';
import HomeIcon from '@mui/icons-material/Home';
import { getCurrentDate } from './Hello';
import axios from 'axios';
import ReactHtmlParser from 'html-react-parser';
import Marquee from "react-fast-marquee";
import FlashOnIcon from '@mui/icons-material/FlashOn';


function ResponsiveAppBar() {
  
  const [trendsData, setTrendsData] = React.useState([]);


  const marqueeStyle = {
    width: '100%',
    overflow: 'hidden',
    border:'1px solid #ccc',
    background: 'black',
    color: 'rgb(202, 255, 195)',
    display: 'inline-block',
    padding: '10px 20px',
    fontsize: '70px',
   }



    React.useEffect(() => {

        axios.get('/api/trendsnews')
        .then((result) => {
            console.log(result.data['results']);
            setTrendsData(result.data['results']);
            
        }).catch((err) => {
            console.log(err);
        });


    }, []);

  return (

    <div role="navigation">

        <div className="p-3 bg-light">
            <div className="row align-items-center">
                <div className="col-lg-3 col-md-3 d-none d-md-block">

                    <div className="">
                        <MenuIcon/>
                        <strong> Rewmi network</strong>
                    </div>
                    <div className="mt-1 text-secondary d-flex justify-content">
                        <FacebookIcon/> 
                        <YouTubeIcon/>
                        <TwitterIcon/>
                        Abonner
                    </div>
                </div>

                <div className="col-lg-6 col-md-6 text-center">
                    <div className="display-4">
                        L'équilibre notre crédo
                    </div>
                    <div className="text-secondary small"> {getCurrentDate('/')} </div>
                </div>


                <div className="col-lg-3 col-md-3 text-end d-none d-md-block">
                    <TextField id="standard-basic" label="Search" variant="standard" />
                    Trending big story
                </div>
            </div>
        </div>

        <div className="border-bottom border-top">            
            <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
                <div className="container-fluid">
                    
                    <button className="navbar-toggler" type="button"
                        data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>


                    <div className="collapse navbar-collapse" id="navbarNav">
                        <ul className="navbar-nav mx-auto">

                            
                            <li className="nav-item">
                                <a href="/site" className="nav-link mx-2 active" aria-current="page"> <HomeIcon/> </a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">Actualité</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">Faits divers</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">Economie</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">People</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">Sport</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold ">Décryptage</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 fw-bold " >Contributions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            
        </div>



        <div className="border m-5 d-flex " id="subNavContainer">
            <div>
                <div className="py-2 px-5 bg-danger text-white">Flash <FlashOnIcon/></div>
            </div>

            <div className="px-1">
                <div id="scroll-content" className="text-secondary ">

                <Marquee  style={{ width: 760 }} >

                        {trendsData && trendsData.map(item => {
                            
                            //elem += item.title.toString()+'</br>';
                            return (
                                <>
                                    <div className='p-2'>
                                        <a href={`${item.link}`} target='_blank'>
                                            {ReactHtmlParser(item.title+' ;')}
                                            
                                        </a>
                                    
                                    </div>
                                    
                                </>
                            );
                        })}





                </Marquee>

                </div>
            </div>
        </div>
    </div>

  );
}
export default ResponsiveAppBar;
