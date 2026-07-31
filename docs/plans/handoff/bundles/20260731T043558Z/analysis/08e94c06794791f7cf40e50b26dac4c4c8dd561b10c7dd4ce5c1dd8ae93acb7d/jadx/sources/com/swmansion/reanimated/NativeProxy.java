package com.swmansion.reanimated;

import com.facebook.jni.HybridData;
import com.facebook.react.bridge.JavaScriptContextHolder;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.fabric.FabricUIManager;
import com.facebook.react.turbomodule.core.CallInvokerHolderImpl;
import com.facebook.react.uimanager.UIManagerHelper;
import com.swmansion.reanimated.layoutReanimation.LayoutAnimations;
import com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder;
import com.swmansion.reanimated.nativeProxy.NativeProxyCommon;
import com.swmansion.worklets.JSCallInvokerResolver;
import com.swmansion.worklets.WorkletsModule;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class NativeProxy extends NativeProxyCommon {
    private final HybridData mHybridData;
    private final AtomicBoolean mInvalidated;

    private native HybridData initHybrid(WorkletsModule workletsModule, long j, CallInvokerHolderImpl callInvokerHolderImpl, LayoutAnimations layoutAnimations, boolean z, FabricUIManager fabricUIManager);

    private native void invalidateCpp();

    public native boolean isAnyHandlerWaitingForEvent(String str, int i);

    public native void performOperations();

    public NativeProxy(ReactApplicationContext reactApplicationContext, WorkletsModule workletsModule) {
        super(reactApplicationContext);
        this.mInvalidated = new AtomicBoolean(false);
        ReactFeatureFlagsWrapper.enableMountHooks();
        FabricUIManager fabricUIManager = (FabricUIManager) UIManagerHelper.getUIManager(reactApplicationContext, 2);
        LayoutAnimations layoutAnimations = new LayoutAnimations(reactApplicationContext);
        this.mHybridData = initHybrid(workletsModule, ((JavaScriptContextHolder) Objects.requireNonNull(reactApplicationContext.getJavaScriptContextHolder())).get(), JSCallInvokerResolver.getJSCallInvokerHolder(reactApplicationContext), layoutAnimations, reactApplicationContext.isBridgeless(), fabricUIManager);
        prepareLayoutAnimations(layoutAnimations);
        installJSIBindings();
    }

    @Override // com.swmansion.reanimated.nativeProxy.NativeProxyCommon
    protected HybridData getHybridData() {
        return this.mHybridData;
    }

    protected void invalidate() {
        HybridData hybridData;
        if (this.mInvalidated.getAndSet(true) || (hybridData = this.mHybridData) == null || !hybridData.isValid()) {
            return;
        }
        invalidateCpp();
    }

    public static NativeMethodsHolder createNativeMethodsHolder(LayoutAnimations layoutAnimations) {
        return new NativeMethodsHolder() { // from class: com.swmansion.reanimated.NativeProxy.1
            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public void cancelAnimation(int i) {
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public void checkDuplicateSharedTag(int i, int i2) {
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public void clearAnimationConfig(int i) {
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public int findPrecedingViewTagForTransition(int i) {
                return -1;
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public boolean hasAnimation(int i, int i2) {
                return false;
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public boolean isLayoutAnimationEnabled() {
                return false;
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public boolean shouldAnimateExiting(int i, boolean z) {
                return false;
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public void startAnimation(int i, int i2, HashMap<String, Object> hashMap) {
            }

            @Override // com.swmansion.reanimated.layoutReanimation.NativeMethodsHolder
            public int[] getSharedGroup(int i) {
                return new int[0];
            }
        };
    }
}
