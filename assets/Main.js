import React, { StrictMode } from 'react';
import {BrowserRouter as Switch, Routes, Route, Redirect} from 'react-router-dom';  // import Redirect
import PostDetails from './react/controllers/PostDetails';
import { createRoot } from 'react-dom/client';
import ResponsiveAppBar from './react/controllers/ResponsiveAppBar';
import ListArticle from './react/controllers/ListArticle';

function Main() {
  return (
   
      <Switch>
        <Routes>
          <Route exact path="/"  element={<ListArticle/>} />
          <Route path='/postdetails/:id' element={<PostDetails/>}  />
        </Routes>
        
      </Switch>
  )
}

export default Main;
   

if (document.getElementById("app")) {
    const rootElement = document.getElementById('app');

    const root = createRoot(rootElement);

    root.render(
        <StrictMode>
            <Main />
        </StrictMode>
    )

}