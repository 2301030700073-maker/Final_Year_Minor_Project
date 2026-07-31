package com.google.gson.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import retrofit2.CallAdapter;
import retrofit2.Callback;
import retrofit2.CompletableFutureCallAdapterFactory;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstructorConstructor$5 implements ObjectConstructor, CallAdapter {
    public final /* synthetic */ int $r8$classId;
    public final Type val$type;

    public /* synthetic */ ConstructorConstructor$5(int i, Type type) {
        this.$r8$classId = i;
        this.val$type = type;
    }

    @Override // retrofit2.CallAdapter
    public Object adapt(OkHttpCall okHttpCall) {
        switch (this.$r8$classId) {
            case 2:
                final CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture = new CompletableFutureCallAdapterFactory.CallCancelCompletableFuture(okHttpCall);
                final int i = 0;
                okHttpCall.enqueue(new Callback(callCancelCompletableFuture, i) { // from class: retrofit2.CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback
                    public final /* synthetic */ int $r8$classId;
                    public final CompletableFutureCallAdapterFactory.CallCancelCompletableFuture future;

                    {
                        this.$r8$classId = i;
                        this.future = callCancelCompletableFuture;
                    }

                    @Override // retrofit2.Callback
                    public final void onFailure(Call call, Throwable th) {
                        int i2 = this.$r8$classId;
                        CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture2 = this.future;
                        switch (i2) {
                            case 0:
                                callCancelCompletableFuture2.completeExceptionally(th);
                                break;
                            default:
                                callCancelCompletableFuture2.completeExceptionally(th);
                                break;
                        }
                    }

                    @Override // retrofit2.Callback
                    public final void onResponse(Call call, Response response) {
                        int i2 = this.$r8$classId;
                        CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture2 = this.future;
                        switch (i2) {
                            case 0:
                                if (!response.rawResponse.isSuccessful) {
                                    callCancelCompletableFuture2.completeExceptionally(new HttpException(response));
                                    break;
                                } else {
                                    callCancelCompletableFuture2.complete(response.body);
                                    break;
                                }
                            default:
                                callCancelCompletableFuture2.complete(response);
                                break;
                        }
                    }
                });
                return callCancelCompletableFuture;
            default:
                final CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture2 = new CompletableFutureCallAdapterFactory.CallCancelCompletableFuture(okHttpCall);
                final int i2 = 1;
                okHttpCall.enqueue(new Callback(callCancelCompletableFuture2, i2) { // from class: retrofit2.CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback
                    public final /* synthetic */ int $r8$classId;
                    public final CompletableFutureCallAdapterFactory.CallCancelCompletableFuture future;

                    {
                        this.$r8$classId = i2;
                        this.future = callCancelCompletableFuture2;
                    }

                    @Override // retrofit2.Callback
                    public final void onFailure(Call call, Throwable th) {
                        int i22 = this.$r8$classId;
                        CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture22 = this.future;
                        switch (i22) {
                            case 0:
                                callCancelCompletableFuture22.completeExceptionally(th);
                                break;
                            default:
                                callCancelCompletableFuture22.completeExceptionally(th);
                                break;
                        }
                    }

                    @Override // retrofit2.Callback
                    public final void onResponse(Call call, Response response) {
                        int i22 = this.$r8$classId;
                        CompletableFutureCallAdapterFactory.CallCancelCompletableFuture callCancelCompletableFuture22 = this.future;
                        switch (i22) {
                            case 0:
                                if (!response.rawResponse.isSuccessful) {
                                    callCancelCompletableFuture22.completeExceptionally(new HttpException(response));
                                    break;
                                } else {
                                    callCancelCompletableFuture22.complete(response.body);
                                    break;
                                }
                            default:
                                callCancelCompletableFuture22.complete(response);
                                break;
                        }
                    }
                });
                return callCancelCompletableFuture2;
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        int i = this.$r8$classId;
        Type type = this.val$type;
        switch (i) {
            case 0:
                if (!(type instanceof ParameterizedType)) {
                    Gson$$ExternalSyntheticBUOutline0.m$2("Invalid EnumSet type: ", type);
                    break;
                } else {
                    Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (!(type2 instanceof Class)) {
                        Gson$$ExternalSyntheticBUOutline0.m$2("Invalid EnumSet type: ", type);
                        break;
                    } else {
                        break;
                    }
                }
            default:
                if (!(type instanceof ParameterizedType)) {
                    Gson$$ExternalSyntheticBUOutline0.m$2("Invalid EnumMap type: ", type);
                    break;
                } else {
                    Type type3 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (!(type3 instanceof Class)) {
                        Gson$$ExternalSyntheticBUOutline0.m$2("Invalid EnumMap type: ", type);
                        break;
                    } else {
                        break;
                    }
                }
        }
        return null;
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        int i = this.$r8$classId;
        return this.val$type;
    }
}
