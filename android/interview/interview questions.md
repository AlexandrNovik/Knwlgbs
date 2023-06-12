## kotlin
1. когда лучше использовать ext functions а когда лучше не использовать?
2. delegates
3. object
4. inline fun
5. reified
6. data class
7. sealed class

## android
1. foreground service (notification/control notification)
2. communication with service (binder)
3. push notifications
4. navigation (fragment manager)
5. lifecycle (view model)
6. concurrency
7. этот код приходит к тебе на ревью
```kotlin
open class VideoCallManager(  
    private val context: Context,  
    private val appPrefs: AppPrefs  
) {  
  
    fun saveVideoTitle() {  
        appPrefs.saveTitle(context.getString(R.string.text))  
    }  
}
```

## coroutines
1. в чем заключается structured concurrency (job, context, scope, dispatcher)
2. launch vs async
3. как обрабатываются исключения в корутинах
4. SharedFlow vs StateFlow
5. combine, flatMap
