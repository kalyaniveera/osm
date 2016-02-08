<!--
 * =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 * Copyright (c) 2010 Oracle CGBU Consulting
 *
 * All rights reserved.
 *
 * No part of this artifact may be reproduced or copied in any form or by any
 * means, electronic or mechanical, including photocopying, recording, or
 * information storage and retrieval system without permission in writing.
 * This artifact contains information that is considered company sensitive.
 * While Oracle Communications Software, Inc may freely copy and distribute this
 * material,all copies must remain in the possession of Oracle Communications.
 * Product names are trademarked by their respective companies.
 * =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 *
 *
-->


<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.metasolv.com/OMS/OrderDataUpdate/2002/10/25"
  xmlns:oms="urn:com:metasolv:oms:xmlapi:1"
  xmlns:java="http://xml.apache.org/xalan/java"
	xmlns:xalan="http://xml.apache.org/xalan"
	exclude-result-prefixes="oms java xsl xalan">

  <!-- set up the parameters passed by OSM -->
  <xsl:param name="automator"/>
  <xsl:param name="log"/>
  <xsl:param name="context"/>

  <!-- root template -->
  <xsl:template match="/">
<!--
    <xsl:variable name="void" select="java:setUpdateOrder($automator,'true')"/>
-->
    <!-- The output XML to update OSM -->
    <OrderDataUpdate
      xmlns="http://www.w3.org/2001/XMLSchema"
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:odu="http://www.metasolv.com/OMS/OrderDataUpdate"
      targetNameSpace="http://www.metasolv.com/OMS/OrderDataUpdate">

      <Add path="/">
         <order_dashboard>
             <order_complete>No</order_complete>
             <order_in_delay>No</order_in_delay>
             <order_status>In Progress</order_status>
         </order_dashboard>
      </Add>


    </OrderDataUpdate>

    <xsl:variable name="exit" select="java:completeTaskOnExit($context, 'success')"/>

  </xsl:template>
</xsl:stylesheet>