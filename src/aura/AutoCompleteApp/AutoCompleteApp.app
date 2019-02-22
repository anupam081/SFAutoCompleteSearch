<aura:application extends="ltng:outApp" access="GLOBAL">
  <!-- Create attribute to store lookup value as a sObject--> 
  <aura:attribute name="selectedLookUpRecords" type="sObject[]" default="[]"/>
 
  <!---->c:ParentAutoCompleteComponent objectAPIName="account"
                               IconName="standard:account"
                               lstSelectedRecords="{!v.selectedLookUpRecords}"
                               label="Account Name"/-->
  
  <aura:dependency resource="c:ParentAutoCompleteComponent"/>
   <!-- here c: is org. namespace prefix-->
</aura:application>