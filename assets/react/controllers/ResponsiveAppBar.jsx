import * as React from 'react';
import {BrowserRouter as Router, Link, Route, Routes } from "react-router-dom";
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import IconButton from '@mui/material/IconButton';
import Typography from '@mui/material/Typography';
import Menu from '@mui/material/Menu';
import Container from '@mui/material/Container';
import Avatar from '@mui/material/Avatar';
import Button from '@mui/material/Button';
import Tooltip from '@mui/material/Tooltip';
import MenuItem from '@mui/material/MenuItem';
import AdbIcon from '@mui/icons-material/Adb';
import MenuIcon from '@mui/icons-material/Menu';
import FacebookIcon from '@mui/icons-material/Facebook';
import YouTubeIcon from '@mui/icons-material/YouTube';
import TwitterIcon from '@mui/icons-material/Twitter';
import { TextField } from '@mui/material';
import HomeIcon from '@mui/icons-material/Home';
import Slideshow from './Slideshow';
import { getCurrentDate } from './Hello';
import axios from 'axios';
import ReactHtmlParser from 'html-react-parser';

const pages = ['Actualités', 'Economie', 'Sport', 'People', 'Décriptage', 'Contribution'];
const settings = ['Profile', 'Account', 'Dashboard', 'Logout'];


function ResponsiveAppBar() {
  const [anchorElNav, setAnchorElNav] = React.useState(null);
  const [anchorElUser, setAnchorElUser] = React.useState(null);
  
  
  const [trendsData, setTrendsData] = React.useState([]);
  const [allElement, setAllElement] = React.useState('');

  let elem ='';

    
  const handleOpenNavMenu = (event) => {
    setAnchorElNav(event.currentTarget);
  };
  const handleOpenUserMenu = (event) => {
    setAnchorElUser(event.currentTarget);
  };

  const handleCloseNavMenu = () => {
    setAnchorElNav(null);
  };

  const handleCloseUserMenu = () => {
    setAnchorElUser(null);
  };


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
                    <div className="display-6">
                        L'équilibre notre crédo
                    </div>
                    <div className="text-secondary display-7"> {getCurrentDate('-')} </div>
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
                    <div className="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul className="navbar-nav mx-auto">

                            
                            <li className="nav-item">
                                <a href="/site" className="nav-link mx-2 active" aria-current="page"> <HomeIcon/> </a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">Actualité</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">Faits divers</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">Economie</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">People</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">Sport</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 ">Décryptage</a>
                            </li>
                            <li className="nav-item">
                                <a href="#" className="nav-link mx-2 " >Contributions</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            
        </div>



        <div className="border-bottom d-flex" id="subNavContainer">
            <div>
                <div className="py-2 px-5 bg-danger text-white">Breaking News :</div>
            </div>

            <div className="px-1">
                <div id="scroll-content" className="text-secondary ">
                    <marquee behavior="scroll" scrollamount="2" width="100%" direction="down" height="40px">
                        {trendsData && trendsData.map(item => {
                            
                            elem += item.title.toString()+'</br>';
                            return (
                                <>

                                    
                                            {ReactHtmlParser(elem)} <br/>
                                        

                                </>
                            );
                        })}
                        </marquee>




                </div>
            </div>
        </div>
    </div>

  );
}
export default ResponsiveAppBar;