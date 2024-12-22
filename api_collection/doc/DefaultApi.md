# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasksGet**](DefaultApi.md#tasksget) | **GET** /tasks | Get all tasks
[**tasksIdDelete**](DefaultApi.md#tasksiddelete) | **DELETE** /tasks/{id} | Delete a task
[**tasksIdGet**](DefaultApi.md#tasksidget) | **GET** /tasks/{id} | Get a specific task
[**tasksIdPut**](DefaultApi.md#tasksidput) | **PUT** /tasks/{id} | Update a specific task
[**tasksPost**](DefaultApi.md#taskspost) | **POST** /tasks | Create a new task


# **tasksGet**
> List<Task> tasksGet()

Get all tasks

Retrieve a list of all tasks.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.tasksGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->tasksGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Task&gt;**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdDelete**
> tasksIdDelete(id)

Delete a task

Remove a task by its ID.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | The ID of the task to delete.

try {
    api.tasksIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->tasksIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the task to delete. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdGet**
> Task tasksIdGet(id)

Get a specific task

Retrieve a task by its ID.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | The ID of the task to retrieve.

try {
    final response = api.tasksIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->tasksIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the task to retrieve. | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdPut**
> Task tasksIdPut(id, taskInput)

Update a specific task

Update the details of an existing task.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | The ID of the task to update.
final TaskInput taskInput = ; // TaskInput | The updated task data.

try {
    final response = api.tasksIdPut(id, taskInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->tasksIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the task to update. | 
 **taskInput** | [**TaskInput**](TaskInput.md)| The updated task data. | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksPost**
> Task tasksPost(taskInput)

Create a new task

Add a new task to the list.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final TaskInput taskInput = ; // TaskInput | The task to create.

try {
    final response = api.tasksPost(taskInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->tasksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskInput** | [**TaskInput**](TaskInput.md)| The task to create. | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

