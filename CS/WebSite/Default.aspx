﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxDocking" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxDockPanel: How to Disable Dragging for Certain Areas of the Header</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxDockPanel ID="ASPxDockPanel1" runat="server" Height="338px" Width="382px">
            <HeaderTemplate>
                <div onmousedown="return ASPxClientUtils.PreventEventAndBubble(event);" 
                    style="text-align: right; height: 28px; width: 134px">
                    <dx:ASPxMenu ID="ASPxMenu1" runat="server">
                        <Items>
                            <dx:MenuItem Text="Item1">
                                <Items>
                                    <dx:MenuItem Text="Item1-1">
                                    </dx:MenuItem>
                                </Items>
                            </dx:MenuItem>
                            <dx:MenuItem Text="Item2">
                            </dx:MenuItem>
                            <dx:MenuItem Text="Item3">
                            </dx:MenuItem>
                        </Items>
                    </dx:ASPxMenu>
                </div>
            </HeaderTemplate>
            <ContentCollection>
                <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxDockPanel>
    </div>
    </form>
</body>
</html>