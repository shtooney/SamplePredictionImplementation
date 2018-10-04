public class RunAI {    
    
    //This is an example implementation of calling on a class that supports Einstein Playground
    //Note this uses Intent as an example but can be for other Einstein Platform Services
    
    public static void run(){
        
        String modelId = 'Your Model Id Goes Here';
        String data = 'Your Sample Language Goes Here';
        Integer numResults = 30;
        String sampleId = '';        
        
        Einstein_PredictionService myService = 
            new Einstein_PredictionService(Einstein_PredictionService.Types.INTENT);
        Einstein_PredictionResult myResult = myService.predictIntent(modelId, data, numResults, sampleId);
        System.debug(myResult);
        for (Integer i = 0; i < myResult.probabilities.size(); i++){
            System.debug(myResult.probabilities.get(i).label + ': ' + myResult.probabilities.get(i).probability);
            // While iterating through stuff is cool, often you'll just need to grab the first element in the list.
            // So practical approach would often just require a fetch of myResult.probabilities.get(0) to get relevant result
        } 
    }
    
    // Disclaimer; This is just a sample implementation by using the classes built by this repo 
    // https://github.com/muenzpraeger/salesforce-einstein-platform-apex
    // So credit goes to that repo and its owner, this is just a sample of calling on it
    
}
