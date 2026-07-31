package com.sovranreactnative;

import android.util.Log;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sovran.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00110\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/sovranreactnative/Sovran;", "Lcom/facebook/react/ReactPackage;", "<init>", "()V", "isInitialized", "", "queue", "", "Lcom/sovranreactnative/Sovran$Action;", "module", "Lcom/sovranreactnative/SovranModule;", "createNativeModules", "", "Lcom/facebook/react/bridge/NativeModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "createViewManagers", "Lcom/facebook/react/uimanager/ViewManager;", "dispatch", "", "action", "", "payload", "", "", "Action", "segment_sovran-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class Sovran implements ReactPackage {
    private boolean isInitialized;
    private SovranModule module;
    private final List<Action> queue = new ArrayList();

    /* compiled from: Sovran.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005HÆ\u0003J+\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sovranreactnative/Sovran$Action;", "", "type", "", "payload", "", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "getType", "()Ljava/lang/String;", "getPayload", "()Ljava/util/Map;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "segment_sovran-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Action {
        private final Map<String, Object> payload;
        private final String type;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Action copy$default(Action action, String str, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                str = action.type;
            }
            if ((i & 2) != 0) {
                map = action.payload;
            }
            return action.copy(str, map);
        }

        /* renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        public final Map<String, Object> component2() {
            return this.payload;
        }

        public final Action copy(String type, Map<String, ? extends Object> payload) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(payload, "payload");
            return new Action(type, payload);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Action)) {
                return false;
            }
            Action action = (Action) other;
            return Intrinsics.areEqual(this.type, action.type) && Intrinsics.areEqual(this.payload, action.payload);
        }

        public int hashCode() {
            return (this.type.hashCode() * 31) + this.payload.hashCode();
        }

        public String toString() {
            return "Action(type=" + this.type + ", payload=" + this.payload + ")";
        }

        public Action(String type, Map<String, ? extends Object> payload) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(payload, "payload");
            this.type = type;
            this.payload = payload;
        }

        public final Map<String, Object> getPayload() {
            return this.payload;
        }

        public final String getType() {
            return this.type;
        }
    }

    @Override // com.facebook.react.ReactPackage
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        SovranModule sovranModule = new SovranModule(reactContext);
        this.module = sovranModule;
        sovranModule.setOnInitialized(new Function0() { // from class: com.sovranreactnative.Sovran$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit createNativeModules$lambda$1;
                createNativeModules$lambda$1 = Sovran.createNativeModules$lambda$1(Sovran.this);
                return createNativeModules$lambda$1;
            }
        });
        SovranModule sovranModule2 = this.module;
        Intrinsics.checkNotNull(sovranModule2, "null cannot be cast to non-null type com.facebook.react.bridge.NativeModule");
        return CollectionsKt.listOf(sovranModule2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createNativeModules$lambda$1(Sovran sovran) {
        Log.v("SovranModule", "onInitialized queue: " + sovran.queue.size());
        sovran.isInitialized = true;
        for (Action action : sovran.queue) {
            SovranModule sovranModule = sovran.module;
            if (sovranModule != null) {
                sovranModule.dispatch(action.getType(), action.getPayload());
            }
        }
        sovran.queue.clear();
        return Unit.INSTANCE;
    }

    @Override // com.facebook.react.ReactPackage
    public List<ViewManager<?, ?>> createViewManagers(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return CollectionsKt.emptyList();
    }

    public final void dispatch(String action, Map<String, ? extends Object> payload) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Log.v("SovranModule", "dispatch: " + action + " isInitialized: " + this.isInitialized);
        if (this.isInitialized) {
            SovranModule sovranModule = this.module;
            if (sovranModule != null) {
                sovranModule.dispatch(action, payload);
                return;
            }
            return;
        }
        this.queue.add(new Action(action, payload));
    }
}
