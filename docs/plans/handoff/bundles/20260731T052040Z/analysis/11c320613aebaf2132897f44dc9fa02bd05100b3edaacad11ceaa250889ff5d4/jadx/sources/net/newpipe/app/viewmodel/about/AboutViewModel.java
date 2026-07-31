package net.newpipe.app.viewmodel.about;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import co.touchlab.kermit.Logger$Companion;
import co.touchlab.kermit.Severity;
import kotlin.NotImplementedError;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.internal.StreamingJsonDecoder;
import kotlinx.serialization.json.internal.StringJsonLexer;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.json.internal.WriteModeKt;
import net.newpipe.app.model.AboutLibraries;
import net.newpipe.app.platform.AndroidResourceHandler;
import net.newpipe.app.platform.ResourceHandler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AboutViewModel extends ViewModel {
    public final StateFlowImpl _libraries;
    public final Json json;
    public final ReadonlyStateFlow libraries;
    public final ResourceHandler resourceHandler;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: net.newpipe.app.viewmodel.about.AboutViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AboutViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2);
            Unit unit = Unit.INSTANCE;
            anonymousClass1.invokeSuspend(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            if (this.label != 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            AboutViewModel aboutViewModel = AboutViewModel.this;
            aboutViewModel.getClass();
            try {
                Json json = aboutViewModel.json;
                String readResourceToString = ((AndroidResourceHandler) aboutViewModel.resourceHandler).readResourceToString();
                json.getClass();
                KSerializer serializer = AboutLibraries.Companion.serializer();
                serializer.getClass();
                StringJsonLexer StringJsonLexer = WriteModeKt.StringJsonLexer(json, readResourceToString);
                Object decodeSerializableValue = new StreamingJsonDecoder(json, WriteMode.OBJ, StringJsonLexer, serializer.getDescriptor(), null).decodeSerializableValue(serializer);
                StringJsonLexer.expectEof();
                aboutViewModel._libraries.setValue(((AboutLibraries) decodeSerializableValue).libraries);
            } catch (Exception e) {
                Logger$Companion logger$Companion = Logger$Companion.Companion;
                logger$Companion.getClass();
                Severity severity = Severity.Error;
                if (logger$Companion.config._minSeverity.compareTo(severity) <= 0) {
                    logger$Companion.processLog(severity, e, "Failed to parse BOM");
                }
            }
            return Unit.INSTANCE;
        }
    }

    public AboutViewModel(Json json, ResourceHandler resourceHandler) {
        CloseableCoroutineScope closeableCoroutineScope;
        this.json = json;
        this.resourceHandler = resourceHandler;
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(EmptyList.INSTANCE);
        this._libraries = MutableStateFlow;
        this.libraries = new ReadonlyStateFlow(MutableStateFlow, null);
        synchronized (ViewModelKt.VIEW_MODEL_SCOPE_LOCK) {
            closeableCoroutineScope = (CloseableCoroutineScope) getCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (closeableCoroutineScope == null) {
                CoroutineContext coroutineContext = EmptyCoroutineContext.INSTANCE;
                try {
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    coroutineContext = MainDispatcherLoader.dispatcher.immediate;
                } catch (IllegalStateException | NotImplementedError unused) {
                }
                CloseableCoroutineScope closeableCoroutineScope2 = new CloseableCoroutineScope(coroutineContext.plus(JobKt.SupervisorJob$default()));
                addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", closeableCoroutineScope2);
                closeableCoroutineScope = closeableCoroutineScope2;
            }
        }
        DefaultScheduler defaultScheduler2 = Dispatchers.Default;
        JobKt.launch$default(closeableCoroutineScope, DefaultIoScheduler.INSTANCE, null, new AnonymousClass1(null), 2);
    }
}
