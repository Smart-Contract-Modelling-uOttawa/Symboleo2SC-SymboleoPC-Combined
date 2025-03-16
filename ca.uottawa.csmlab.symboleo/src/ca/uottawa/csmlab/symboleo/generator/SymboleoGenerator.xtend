///*
// * generated by Xtext 2.25.0
// */
package ca.uottawa.csmlab.symboleo.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import ca.uottawa.csmlab.symboleo.symboleo.DomainType
import ca.uottawa.csmlab.symboleo.symboleo.RegularType
import ca.uottawa.csmlab.symboleo.symboleo.Attribute
import java.util.List
import ca.uottawa.csmlab.symboleo.symboleo.Model
import java.util.ArrayList
import ca.uottawa.csmlab.symboleo.symboleo.Enumeration
import ca.uottawa.csmlab.symboleo.symboleo.Parameter
//import ca.uottawa.csmlab.symboleo.symboleo.AssignVariable
import ca.uottawa.csmlab.symboleo.symboleo.VariableRef
import ca.uottawa.csmlab.symboleo.symboleo.Ref
import ca.uottawa.csmlab.symboleo.symboleo.VariableDotExpression
import ca.uottawa.csmlab.symboleo.symboleo.AssignExpression
import ca.uottawa.csmlab.symboleo.symboleo.OAssignExpression
import ca.uottawa.csmlab.symboleo.symboleo.Expression
import ca.uottawa.csmlab.symboleo.symboleo.And
import ca.uottawa.csmlab.symboleo.symboleo.Or
import ca.uottawa.csmlab.symboleo.symboleo.Equality
import ca.uottawa.csmlab.symboleo.symboleo.Comparison
import ca.uottawa.csmlab.symboleo.symboleo.Plus
import ca.uottawa.csmlab.symboleo.symboleo.Minus
import ca.uottawa.csmlab.symboleo.symboleo.Div
import ca.uottawa.csmlab.symboleo.symboleo.Multi
import ca.uottawa.csmlab.symboleo.symboleo.Mod
import ca.uottawa.csmlab.symboleo.symboleo.PrimaryExpressionFunctionCall
import ca.uottawa.csmlab.symboleo.symboleo.NegatedPrimaryExpression
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionTrue
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionFalse
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionDouble
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionInt
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionEnum
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionString
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionParameter
import ca.uottawa.csmlab.symboleo.symboleo.PrimaryExpressionRecursive
import ca.uottawa.csmlab.symboleo.symboleo.TwoArgMathFunction
import ca.uottawa.csmlab.symboleo.symboleo.OneArgMathFunction
import ca.uottawa.csmlab.symboleo.symboleo.TwoArgStringFunction
import ca.uottawa.csmlab.symboleo.symboleo.OneArgStringFunction
import ca.uottawa.csmlab.symboleo.symboleo.Obligation
import ca.uottawa.csmlab.symboleo.symboleo.Power
import ca.uottawa.csmlab.symboleo.symboleo.Variable
import ca.uottawa.csmlab.symboleo.symboleo.Proposition
import ca.uottawa.csmlab.symboleo.symboleo.POr
import ca.uottawa.csmlab.symboleo.symboleo.PAnd
import ca.uottawa.csmlab.symboleo.symboleo.PEquality
import ca.uottawa.csmlab.symboleo.symboleo.NegatedPAtom
import ca.uottawa.csmlab.symboleo.symboleo.PAtomPredicate
import ca.uottawa.csmlab.symboleo.symboleo.PAtomEnum
import ca.uottawa.csmlab.symboleo.symboleo.PAtomRecursive
import ca.uottawa.csmlab.symboleo.symboleo.PComparison
import ca.uottawa.csmlab.symboleo.symboleo.PArithmetic
import ca.uottawa.csmlab.symboleo.symboleo.PAtomVariable
import ca.uottawa.csmlab.symboleo.symboleo.PAtomPredicateTrueLiteral
import ca.uottawa.csmlab.symboleo.symboleo.PAtomPredicateFalseLiteral
import ca.uottawa.csmlab.symboleo.symboleo.PAtomIntLiteral
import ca.uottawa.csmlab.symboleo.symboleo.PAtomStringLiteral
import java.util.HashMap
import ca.uottawa.csmlab.symboleo.symboleo.PAtomDoubleLiteral
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunction
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionHappens
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionHappensWithin
import ca.uottawa.csmlab.symboleo.symboleo.Event
import ca.uottawa.csmlab.symboleo.symboleo.VariableEvent
import ca.uottawa.csmlab.symboleo.symboleo.PowerEvent
import ca.uottawa.csmlab.symboleo.symboleo.ObligationEvent
import ca.uottawa.csmlab.symboleo.symboleo.ContractEvent
import ca.uottawa.csmlab.symboleo.symboleo.PFObligationSuspended
import ca.uottawa.csmlab.symboleo.symboleo.PFObligationResumed
import ca.uottawa.csmlab.symboleo.symboleo.PFObligationDischarged
import ca.uottawa.csmlab.symboleo.symboleo.PFObligationTerminated
import ca.uottawa.csmlab.symboleo.symboleo.PFContractSuspended
import ca.uottawa.csmlab.symboleo.symboleo.PFContractResumed
import ca.uottawa.csmlab.symboleo.symboleo.PFContractTerminated
import ca.uottawa.csmlab.symboleo.symboleo.Interval
import ca.uottawa.csmlab.symboleo.symboleo.Point
import ca.uottawa.csmlab.symboleo.symboleo.PointExpression
import ca.uottawa.csmlab.symboleo.symboleo.PointAtomParameterDotExpression
import ca.uottawa.csmlab.symboleo.symboleo.PointFunction
import ca.uottawa.csmlab.symboleo.symboleo.PointAtomObligationEvent
import ca.uottawa.csmlab.symboleo.symboleo.PointAtomContractEvent
import ca.uottawa.csmlab.symboleo.symboleo.PointAtomPowerEvent
import ca.uottawa.csmlab.symboleo.symboleo.IntervalExpression
import ca.uottawa.csmlab.symboleo.symboleo.IntervalFunction
import ca.uottawa.csmlab.symboleo.symboleo.Situation
import ca.uottawa.csmlab.symboleo.symboleo.ObligationState
import ca.uottawa.csmlab.symboleo.symboleo.PowerState
import ca.uottawa.csmlab.symboleo.symboleo.ContractState
import ca.uottawa.csmlab.symboleo.symboleo.SituationExpression
import ca.uottawa.csmlab.symboleo.symboleo.Timevalue
import ca.uottawa.csmlab.symboleo.symboleo.TimevalueInt
import ca.uottawa.csmlab.symboleo.symboleo.TimevalueVariable
import ca.uottawa.csmlab.symboleo.symboleo.ThreeArgStringFunction
import ca.uottawa.csmlab.symboleo.symboleo.ThreeArgDateFunction
import ca.uottawa.csmlab.symboleo.Helpers
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionSHappensBefore
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionWHappensBefore
import ca.uottawa.csmlab.symboleo.symboleo.OntologyType
import ca.uottawa.csmlab.symboleo.symboleo.AtomicExpressionDate
import ca.uottawa.csmlab.symboleo.symboleo.PAtomDateLiteral
import java.time.format.DateTimeFormatter
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionHappensAfter
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionAssignment
import ca.uottawa.csmlab.symboleo.symboleo.PredicateFunctionAssignmentOnly
import ca.uottawa.csmlab.symboleo.symboleo.PFObligationTriggered
import ca.uottawa.csmlab.symboleo.symboleo.Assignment
import ca.uottawa.csmlab.symboleo.symboleo.OAssignment


//
/**
 * s code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
 class SymboleoGenerator extends AbstractGenerator  {

  val assets = new ArrayList<RegularType>
  val events = new ArrayList<RegularType>
  val roles = new ArrayList<RegularType>
  val enumerations = new ArrayList<Enumeration>

  
  val conditionalObligations = new ArrayList<Obligation>
  val conditionalSurvivingObligations = new ArrayList<Obligation>
  val conditionalPowers = new ArrayList<Power>
  
  val unconditionalObligations = new ArrayList<Obligation>
  val unconditionalSurvivingObligations = new ArrayList<Obligation>
  val unconditionalPowers = new ArrayList<Power>
  
  val untriggeredObligations = new ArrayList<Obligation>
  val untriggeredSurvivingObligations = new ArrayList<Obligation>
  val untriggeredPowers = new ArrayList<Power>
  
  val triggeredObligations = new ArrayList<Obligation>
  val triggeredSurvivingObligations = new ArrayList<Obligation>
  val triggeredPowers = new ArrayList<Power>
  
  val allObligations = new ArrayList<Obligation>
  val allSurvivingObligations = new ArrayList<Obligation>
  val allPowers = new ArrayList<Power>
  val arrays = new ArrayList<String>
  val eventVariables = new ArrayList<Variable>

  val obligationTriggerEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val survivingObligationTriggerEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val powerTriggerEvents = new HashMap<Power, List<PAtomPredicate>>

  val obligationAntecedentEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val survivingObligationAntecedentEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val powerAntecedentEvents = new HashMap<Power, List<PAtomPredicate>>

  val obligationFullfilmentEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val survivingObligationFullfilmentEvents = new HashMap<Obligation, List<PAtomPredicate>>
  val parameters = new ArrayList<Parameter>
  val variables = new ArrayList<Variable>
  val AssignVar= new ArrayList<String>
 
//common 
  def String generateEventMapLineString(List<PAtomPredicate> predicates, String listenerName) {
    val line = new StringBuilder()
    line.append('[[')
    for (predicate : predicates) {
      val pf = predicate.predicateFunction
      switch (pf) {
        PredicateFunctionHappens: line.append(generateInternalEventObjectString(pf.event) + ', ')
        PredicateFunctionWHappensBefore: line.append(generateInternalEventObjectString(pf.event) + ', ')
        PredicateFunctionHappensAfter: line.append(generateInternalEventObjectString(pf.event) + ', ')
        PredicateFunctionSHappensBefore: {
          line.append(generateInternalEventObjectString(pf.event) + ', ')
          val res = generatePointInternalEventObjectString(pf.point.pointExpression)
          if (res !== null){
            line.append(res + ', ') 
          }  
        }
        PredicateFunctionHappensWithin: {
          line.append(generateInternalEventObjectString(pf.event) + ', ')
          val interval = pf.interval.intervalExpression
          switch(interval){
            IntervalFunction: {
              val res1 = generatePointInternalEventObjectString(interval.arg1)
              val res2 = generatePointInternalEventObjectString(interval.arg2)              
              if (res1 !== null) {
                line.append(res1 + ', ') 
              }
              if (res2 !== null) {
                line.append(res2 + ', ') 
              } 
            }
          }
        }
        PredicateFunctionAssignment: {

            

        	line.append(generateInternalEventObjectString(pf.event) + ', ')

         	//line.append(generateAssignObjectString(pf.assignment) + ',') 

        	} // To write in the getEventMap. writing delivered/event before the assignment expression only
      }
    }
    
 if (line.toString() !='[['){

    line.append('''], «listenerName»],''')

    return line.toString

    }
    else return ""

  }
//common
  def String generateInternalEventObjectString(Event event) {
    switch (event) {
      VariableEvent: return '''new InternalEvent(InternalEventSource.contractEvent, InternalEventType.contractEvent.Happened, «generateDotExpressionString(event.variable, 'contract')»)'''
      ObligationEvent: return '''new InternalEvent(InternalEventSource.obligation, InternalEventType.obligation.«event.eventName», contract.«isSurvivingObligation(event.obligationVariable.name) ? "survivingObligations" : "obligations"».«event.obligationVariable.name»)'''
      ContractEvent: return '''new InternalEvent(InternalEventSource.contract, InternalEventType.contract.«event.eventName», contract)'''
      PowerEvent: return '''new InternalEvent(InternalEventSource.power, InternalEventType.power.«event.eventName», contract.powers.«event.powerVariable.name»)'''
    }
  }
 //common
  def String generateOAssignObjectString(List<OAssignment> a) {

  	var s = ""

  	var eName=""

  	var found=false

		for(e: a){

			found=false

		   if (e instanceof OAssignExpression){

		   	 eName=generateDotExpressionString(e.name2,"" )

		   	 if (!(AssignVar.contains(eName) )) {

		   	 	for( p : parameters){ 

		   	 		

                    if (p.name.toString()==eName.toString()){found=true} 

                   }

                if (!(found)){AssignVar.add(eName) }
		   	 }

           s= s+generateDotExpressionString(e.name2,"contract" )+ " = " + generateExpressionString(e.value, 'contract')

           // s= generateExpressionString(a.name, 'contract' )+ OpString(a.op) + generateExpressionString(a.value, 'contract')

          s=s+" \n"

          }

        }

  	return s
  }
  //common
  def String generatePointInternalEventObjectString(PointExpression p) {
    switch (p) {
      PointFunction: {
        val res = generatePointInternalEventObjectString(p.arg)
        if(res !== null) {
          return res
        } else {
          return null
        }
      }
      PointAtomParameterDotExpression: {
        if(Helpers.isDotExpressionTypeOfEvent(p.variable, variables, parameters)) {
          return '''new InternalEvent(InternalEventSource.contractEvent, InternalEventType.contractEvent.Happened, «generateDotExpressionString(p.variable, 'contract')»)'''
        } else {
          return null
        }
      }
      PointAtomObligationEvent: {
        val e = p.obligationEvent as ObligationEvent
        return '''new InternalEvent(InternalEventSource.obligation, InternalEventType.obligation.«e.eventName», contract.«isSurvivingObligation(e.obligationVariable.name) ? "survivingObligations" : "obligations"».«e.obligationVariable.name»)'''
      }
      PointAtomContractEvent: {
        val e = p.contractEvent as ContractEvent
        return '''new InternalEvent(InternalEventSource.contract, InternalEventType.contract.«e.eventName», contract)'''  
      }
      PointAtomPowerEvent: {
        val e = p.powerEvent as PowerEvent
        return '''new InternalEvent(InternalEventSource.power, InternalEventType.power.«e.eventName», contract.powers.«e.powerVariable.name»)'''
      }
    }
  }

//common
  def List<PAtomPredicate> collectPropositionEvents(Proposition proposition) {
    val list = new ArrayList<PAtomPredicate>
    switch (proposition) {
      POr: {
        list.addAll(collectPropositionEvents(proposition.left))
        list.addAll(collectPropositionEvents(proposition.right))
      }
      PAnd: {
        list.addAll(collectPropositionEvents(proposition.left))
        list.addAll(collectPropositionEvents(proposition.right))
      }
      PEquality: {
        list.addAll(collectPropositionEvents(proposition.left))
        list.addAll(collectPropositionEvents(proposition.right))
      }
      PComparison: {
        list.addAll(collectPropositionEvents(proposition.left))
        list.addAll(collectPropositionEvents(proposition.right))
      }
      PAtomRecursive:
        list.addAll(collectPropositionEvents(proposition.inner))
      NegatedPAtom:
        list.addAll(collectPropositionEvents(proposition.negated))
      PAtomPredicate:
      	if (!(proposition.predicateFunction instanceof PredicateFunctionAssignmentOnly)){ list.add(proposition)}
      PArithmetic: {
      	list.addAll(collectPropositionEvents(proposition.left))
        list.addAll(collectPropositionEvents(proposition.right))
      }
      	
      }
    return list
  }


  def String generatePropositionAssignString(Proposition proposition) {
  	 switch (proposition) {
    	POr:
        return generatePropositionAssignString(proposition.left) +  generatePropositionAssignString(proposition.right)
      PAnd:
        return generatePropositionAssignString(proposition.left) + generatePropositionAssignString(proposition.right)
      PEquality:
        return generatePropositionAssignString(proposition.left) + 
          generatePropositionAssignString(proposition.right)
      PComparison:
        return generatePropositionAssignString(proposition.left) +  generatePropositionAssignString(proposition.right)
      PAtomRecursive:
        return generatePropositionAssignString(proposition.inner) 
      NegatedPAtom:
        return generatePropositionAssignString(proposition.negated) 
      PAtomPredicate:
        return generatePredicateAssignString(proposition.predicateFunction)
      PArithmetic:
        return generatePropositionAssignString(proposition.left) +  generatePropositionAssignString(proposition.right)
      default : return " "
    }
  }

  def String generateEventVariableString(Event event) {
    switch (event) {
      VariableEvent: return generateDotExpressionString(event.variable, 'contract')
      PowerEvent: return '''contract.powers.«event.powerVariable.name» && contract.powers.«event.powerVariable.name»._events.«event.eventName»'''
      ObligationEvent: return '''contract.«isSurvivingObligation(event.obligationVariable.name) ? "survivingObligations" : "obligations"».«event.obligationVariable.name» && contract.«isSurvivingObligation(event.obligationVariable.name) ? "survivingObligations" : "obligations"».«event.obligationVariable.name»._events.«event.eventName»'''
      ContractEvent: return '''contract._events.«event.eventName»'''
    }
  }

  def String generatePredicateFunctionString(PredicateFunction predicate) {

    switch (predicate) {

      PredicateFunctionHappens: return '''Predicates.happens(«generateEventVariableString(predicate.event)») '''

      PredicateFunctionHappensAfter: return '''Predicates.happensAfter(«generateEventVariableString(predicate.event)», «generatePointExpresionString(predicate.point.pointExpression)»)'''

      PredicateFunctionWHappensBefore: return '''Predicates.weakHappensBefore(«generateEventVariableString(predicate.event)», «generatePointExpresionString(predicate.point.pointExpression)») '''

      PredicateFunctionSHappensBefore: return '''Predicates.strongHappensBefore(«generateEventVariableString(predicate.event)», «generatePointExpresionString(predicate.point.pointExpression)») '''

      PredicateFunctionHappensWithin: return '''Predicates.happensWithin(«generateEventVariableString(predicate.event)», «generateIntervalExpresionArgString(predicate.interval.intervalExpression)») '''

      PredicateFunctionAssignment: return '''Predicates.happens(«generateEventVariableString(predicate.event)») '''

       PredicateFunctionAssignmentOnly: return '''true'''

    }

  }

	def String generatePredicateAssignString(PredicateFunction predicate) {
	
	    switch (predicate) {
	
	      PredicateFunctionAssignment: return ''' «generateOAssignObjectString(predicate.assignment)» '''
	
	       PredicateFunctionAssignmentOnly: return ''' «generateOAssignObjectString(predicate.assignment)» '''
	
	      default : return " "	
	
	    }
	
	  }

  def String generatePointExpresionString(PointExpression point) {
    switch (point) {
      PointFunction: return '''Utils.addTime(«generatePointExpresionString(point.arg)», «generateTimeValueString(point.value)», "«point.timeUnit»")'''
      PointAtomParameterDotExpression: {
        if (Helpers.isDotExpressionTypeOfEvent(point.variable, variables, parameters)) {
          return '''«generateDotExpressionString(point.variable, 'contract')»._timestamp'''
        } else {
          return generateDotExpressionString(point.variable, 'contract')
        }
        
      }
      PointAtomObligationEvent: {
        val e = point.obligationEvent as ObligationEvent
        val obligationRef = isSurvivingObligation(e.obligationVariable.name) ? "survivingObligations" : "obligations"        
        return '''contract.«obligationRef».«e.obligationVariable.name» && contract.«obligationRef».«e.obligationVariable.name»._events.«e.eventName» && contract.«obligationRef».«e.obligationVariable.name»._events.«e.eventName»._timestamp'''
      }
      PointAtomPowerEvent: {
        val e = point.powerEvent as PowerEvent
        return '''contract.powers.«e.powerVariable.name» && contract.powers.«e.powerVariable.name»._events.«e.eventName» && contract.powers.«e.powerVariable.name»._events.«e.eventName»._timestamp'''
      }
      PointAtomContractEvent: {
        val e = point.contractEvent as ContractEvent
        return '''contract._events.«e.eventName» && contract._events.«e.eventName»._timestamp'''
      }
    }
  }
  def String generateTimeValueString(Timevalue tv) {
    switch (tv) {
      TimevalueInt: return tv.value.toString
      TimevalueVariable: return generateDotExpressionString(tv.variable, 'contract')
    }
  }

  def String generateIntervalExpresionArgString(IntervalExpression interval) {
    switch (interval) {
      IntervalFunction:
        return '''«generatePointExpresionString(interval.arg1)», «generatePointExpresionString(interval.arg2)»'''
      SituationExpression: {
        val situation = interval.situation
        switch (situation) {
          ObligationState: return '''contract.«isSurvivingObligation(situation.obligationVariable.name) ? "survivingObligations" : "obligations"».«situation.obligationVariable.name», "Obligation.«situation.stateName»"'''
          PowerState: return '''contract.powers.«situation.powerVariable.name», "Power.«situation.stateName»""'''
          ContractState: return '''contract, "Contract.«situation.stateName»"'''
        }
      }
    }
  }


  def String generateExpressionString(Expression argExpression, String thisString) {
    switch (argExpression) {
      Or:
        return generateExpressionString(argExpression.left, thisString) + " || " +
          generateExpressionString(argExpression.right, thisString)
      And:
        return generateExpressionString(argExpression.left, thisString) + " && " +
          generateExpressionString(argExpression.right, thisString)
      Equality:
        return generateExpressionString(argExpression.left, thisString) + getEqualityOperator(argExpression.op) +
          generateExpressionString(argExpression.right, thisString)
      Comparison:
        return generateExpressionString(argExpression.left, thisString) + argExpression.op +
          generateExpressionString(argExpression.right, thisString)
      Plus:
        return generateExpressionString(argExpression.left, thisString) + " + " +
          generateExpressionString(argExpression.right, thisString)
      Minus:
        return generateExpressionString(argExpression.left, thisString) + " - " +
          generateExpressionString(argExpression.right, thisString)
      Multi:
        return generateExpressionString(argExpression.left, thisString) + " * " +
          generateExpressionString(argExpression.right, thisString)
      Div:
        return generateExpressionString(argExpression.left, thisString) + " / " +
          generateExpressionString(argExpression.right, thisString)
      Mod:
        return generateExpressionString(argExpression.left, thisString) + " % " +
          generateExpressionString(argExpression.right, thisString)
      PrimaryExpressionRecursive:
        return "(" + generateExpressionString(argExpression.inner, thisString) + ")"
      PrimaryExpressionFunctionCall:
        return generateFunctionCall(argExpression, thisString)
      NegatedPrimaryExpression:
        return "!(" + generateExpressionString(argExpression.expression, thisString) + ")"
      AtomicExpressionTrue:
        return "true"
      AtomicExpressionFalse:
        return "false"
      AtomicExpressionDouble:
        return argExpression.value.toString()
      AtomicExpressionInt:
        return argExpression.value.toString()
      AtomicExpressionDate:
        return '''(new Date("«argExpression.value.toInstant.toString»").toISOString())'''
      AtomicExpressionEnum:
        return argExpression.enumeration + "." + argExpression.enumItem
      AtomicExpressionString:
        return '"' + argExpression.value + '"'
      AtomicExpressionParameter:
        return generateDotExpressionString(argExpression.value, thisString)
    }
  }

  def static String  generateDotExpressionString(Ref argRef, String thisString) {
    val ids = new ArrayList<String>()
    var ref = argRef
    while (ref instanceof VariableDotExpression) {
      ids.add(ref.tail.name)
      ref = ref.ref
    }
    if (ref instanceof VariableRef) {
      ids.add((ref as VariableRef).variable)
    }
    ids.add(thisString)
    return ids.reverse().join(".")
  }

   def String generateFunctionCall(PrimaryExpressionFunctionCall argFunctionCallExp, String thisString) {
    val functionCall = argFunctionCallExp.function
    switch (functionCall) {
      TwoArgMathFunction:
        return functionCall.name + "(" + generateExpressionString(functionCall.arg1, thisString) + "," +
          generateExpressionString(functionCall.arg2, thisString) + ")"
      OneArgMathFunction:
        return functionCall.name + "(" + generateExpressionString(functionCall.arg1, thisString) + ")"
      ThreeArgStringFunction:
        return functionCall.name.replace("String", "Str") + "(" + generateExpressionString(functionCall.arg1, thisString) + "," +
          generateExpressionString(functionCall.arg2, thisString) + "," + generateExpressionString(functionCall.arg3, thisString) + ")"
      TwoArgStringFunction:
        return functionCall.name.replace("String", "Str") + "(" + generateExpressionString(functionCall.arg1, thisString) + "," +
          generateExpressionString(functionCall.arg2, thisString) + ")"
      OneArgStringFunction:
        return functionCall.name.replace("String", "Str") + "(" + generateExpressionString(functionCall.arg1, thisString) + ")"
      ThreeArgDateFunction:
        return '''Utils.addTime(«generateExpressionString(functionCall.arg1, thisString)», «generateExpressionString(functionCall.value, thisString)», "«functionCall.timeUnit»")'''
    }
  }

  def String getEqualityOperator(String op) {
    switch (op) {
      case '!=': return '!=='
      case '==': return '==='
    }
  }

	 def boolean isSurvivingObligation (String name) {
	    for (obligation: allObligations){
	      if(obligation.name.equals(name)){
	        return false
	      }
	    }
	    for (obligation: allSurvivingObligations){
	      if(obligation.name.equals(name)){
	        return true
	      }
	    }
    }
    
 def String survivEvent(String e ){
	var survive=false
 	var related=false
 	for(line: arrays){
 		if (line.contains("contract."+e) && (line.contains('EventListeners.fulfillSurvivingObligation') ||
      	             	line.contains("EventListeners.createSurvivingObligation") ||
     	             line.contains("EventListeners.activateSurvivingObligation")  )) {
     	             	survive=true
     	             }
     	 if (line.contains("contract."+e) && (line.contains('EventListeners.fulfillObligation') ||
      	             	line.contains("EventListeners.createObligation") ||
     	             line.contains("EventListeners.activateObligation") ||
     	             line.contains("EventListeners.createPower" ) ||
     	              line.contains("EventListeners.activatePower") ||
     	              line.contains('EventListeners.fulfillPower'))) {
     	             	related=true
     	             }	             
 	}
 	if (survive && !related){
 		return " || contract.isSuccessfulTermination() || contract.isUnsuccessfulTermination()"
 	} else
	return "" 	
 }


  override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
    for (e : resource.allContents.toIterable.filter(Model)) {
      assets.clear()
      events.clear()
      roles.clear()
      enumerations.clear()
      parameters.clear()
      
      arrays.clear()
      
      conditionalObligations.clear()
      conditionalSurvivingObligations.clear()
      conditionalPowers.clear()
                                              
      unconditionalObligations.clear()
      unconditionalSurvivingObligations.clear()
      unconditionalPowers.clear()
                                              
      untriggeredObligations.clear()
      untriggeredSurvivingObligations.clear()
      untriggeredPowers.clear()
      
      
      triggeredObligations.clear()
      triggeredSurvivingObligations.clear()
      triggeredPowers.clear()
      
      allObligations.clear()
      allSurvivingObligations.clear()
      allPowers.clear()

      eventVariables.clear()

      obligationTriggerEvents.clear()
      survivingObligationTriggerEvents.clear()
      powerTriggerEvents.clear()

      obligationAntecedentEvents.clear()
      survivingObligationAntecedentEvents.clear()
      powerAntecedentEvents.clear()

      obligationFullfilmentEvents.clear()
      survivingObligationFullfilmentEvents.clear()
 	
 	  System.out.println('generate2SCSource: ' + e.contractName)
      var symboleo2SC = new Symboleo2SC()
      System.out.println('generateHFSource: ' + e.contractName)
      symboleo2SC.generateHFSource(fsa, e)
      
      System.out.println('generatePCSource: ' + e.contractName)
      var symboleoPC = new SymboleoPCGenerator()
      symboleoPC.generatePCSource(fsa, e)
      
     
    }
  }
  override void afterGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
    assets.clear()
    events.clear()
    roles.clear()
    enumerations.clear()
    parameters.clear()
    
    conditionalObligations.clear()
    conditionalSurvivingObligations.clear()
    conditionalPowers.clear()
                                              
    unconditionalObligations.clear()
    unconditionalSurvivingObligations.clear()
    unconditionalPowers.clear()
                                              
    untriggeredObligations.clear()
    untriggeredSurvivingObligations.clear()
    untriggeredPowers.clear()

    triggeredObligations.clear()
    triggeredSurvivingObligations.clear()
    triggeredPowers.clear()
    
    allObligations.clear()
    allSurvivingObligations.clear()
    allPowers.clear()

    eventVariables.clear()
    AssignVar.clear()

    obligationTriggerEvents.clear()
    survivingObligationTriggerEvents.clear()
    powerTriggerEvents.clear()

    obligationAntecedentEvents.clear()
    survivingObligationAntecedentEvents.clear()
    powerAntecedentEvents.clear()

    obligationFullfilmentEvents.clear()
    survivingObligationFullfilmentEvents.clear()
  }
 }
  
