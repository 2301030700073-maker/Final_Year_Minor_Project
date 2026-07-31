package com.allproperty.android.consumer.modules;

import androidx.datastore.core.DataStore;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.google.android.gms.tasks.Task;
import com.google.firebase.Firebase;
import com.google.firebase.analytics.AnalyticsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.tasks.TasksKt;

/* compiled from: IPropertyMigration.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1", f = "IPropertyMigration.kt", i = {1}, l = {42, 45}, m = "invokeSuspend", n = {"uniqueId"}, s = {"L$0"})
/* loaded from: classes2.dex */
final class IPropertyMigration$getLegacyDeviceId$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Promise $promise;
    Object L$0;
    int label;
    final /* synthetic */ IPropertyMigration this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IPropertyMigration$getLegacyDeviceId$1(IPropertyMigration iPropertyMigration, Promise promise, Continuation<? super IPropertyMigration$getLegacyDeviceId$1> continuation) {
        super(2, continuation);
        this.this$0 = iPropertyMigration;
        this.$promise = promise;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IPropertyMigration$getLegacyDeviceId$1(this.this$0, this.$promise, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((IPropertyMigration$getLegacyDeviceId$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ReactApplicationContext reactApplicationContext;
        DataStore dataStore;
        String str;
        String str2;
        String str3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            reactApplicationContext = this.this$0.reactContext;
            dataStore = IPropertyMigrationKt.getDataStore(reactApplicationContext);
            final Flow data = dataStore.getData();
            this.label = 1;
            obj = FlowKt.first(new Flow<String>() { // from class: com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1

                /* compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                /* renamed from: com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2", f = "IPropertyMigration.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                    /* renamed from: com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
                    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r6
                            com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2$1 r0 = (com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r6 = r0.label
                            int r6 = r6 - r2
                            r0.label = r6
                            goto L19
                        L14:
                            com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2$1 r0 = new com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1$2$1
                            r0.<init>(r6)
                        L19:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L4d
                        L2a:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L32:
                            kotlin.ResultKt.throwOnFailure(r6)
                            kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            androidx.datastore.preferences.core.Preferences r5 = (androidx.datastore.preferences.core.Preferences) r5
                            androidx.datastore.preferences.core.Preferences$Key r2 = com.allproperty.android.consumer.modules.IPropertyMigration.access$getUNIQUE_ID$cp()
                            java.lang.Object r5 = r5.get(r2)
                            r0.label = r3
                            java.lang.Object r5 = r6.emit(r5, r0)
                            if (r5 != r1) goto L4d
                            return r1
                        L4d:
                            kotlin.Unit r5 = kotlin.Unit.INSTANCE
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.allproperty.android.consumer.modules.IPropertyMigration$getLegacyDeviceId$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super String> flowCollector, Continuation continuation) {
                    Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                    return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
                }
            }, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str2 = (String) this.L$0;
                ResultKt.throwOnFailure(obj);
                String str4 = (String) obj;
                str3 = str4;
                if (str3 == null && !StringsKt.isBlank(str3)) {
                    this.$promise.resolve(str4);
                    return Unit.INSTANCE;
                }
                str = str2;
                this.$promise.resolve(str);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        str = (String) obj;
        String str5 = str;
        if (str5 == null || StringsKt.isBlank(str5)) {
            Task<String> appInstanceId = AnalyticsKt.getAnalytics(Firebase.INSTANCE).getAppInstanceId();
            Intrinsics.checkNotNullExpressionValue(appInstanceId, "getAppInstanceId(...)");
            this.L$0 = str;
            this.label = 2;
            Object await = TasksKt.await(appInstanceId, this);
            if (await == coroutine_suspended) {
                return coroutine_suspended;
            }
            str2 = str;
            obj = await;
            String str42 = (String) obj;
            str3 = str42;
            if (str3 == null) {
            }
            str = str2;
        }
        this.$promise.resolve(str);
        return Unit.INSTANCE;
    }
}
