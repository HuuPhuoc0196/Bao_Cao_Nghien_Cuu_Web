﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdRotatorDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        HyperLink1.Text = e.AlternateText;
        HyperLink1.NavigateUrl = e.NavigateUrl;
    }
}