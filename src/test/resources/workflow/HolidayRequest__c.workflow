<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ConfirmCheck</fullName>
        <field>Confirm__c</field>
        <literalValue>1</literalValue>
        <name>要確認のチェックを付ける</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>休暇期間が5日を超える</fullName>
        <actions>
            <name>ConfirmCheck</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HolidayRequest__c.NumberOfHoliday__c</field>
            <operation>greaterThan</operation>
            <value>5</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
