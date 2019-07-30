<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to draw a chart</title>
     <!-- ===================== ChartJS Framework ===================================================== -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/globalize/0.1.1/globalize.min.js"></script>
    <script type="text/javascript" src="https://cdn3.devexpress.com/jslib/13.1.6/js/dx.chartjs.js"></script>
    <!-- ============================================================================================= -->
    <script type="text/javascript" src="chart.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Width="100%" >
            <TabPages>
                <dx:TabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                            <div id='chartContainer1' style='max-width: 700px; height: 400px;'>
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage>
                    <ContentCollection>
                        <dx:ContentControl runat="server" SupportsDisabledAttribute="True">
                            <div id='chartContainer2' style='max-width: 700px; height: 400px;'>
                            </div>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
            <ClientSideEvents Init="function (s,e) {  DrawChart('chartContainer1'); }" ActiveTabChanged="function (s,e) { DrawChart('chartContainer2'); isShown = true;}" />
        </dx:ASPxPageControl>
    </div>
    </form>
</body>
</html>