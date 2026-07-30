package com.android.launcher3.util;

import android.content.Context;
import android.os.Looper;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class MainThreadInitializedObject {
    public final ObjectProvider mProvider;
    public Object mValue;

    public interface ObjectProvider {
        Object get(Context context);
    }

    public MainThreadInitializedObject(ObjectProvider objectProvider) {
        this.mProvider = objectProvider;
    }

    public /* synthetic */ Object a(Context context) {
        return this.mProvider.get(context.getApplicationContext());
    }

    /* renamed from: get, reason: merged with bridge method [inline-methods] */
    public Object b(final Context context) {
        if (!(context instanceof LauncherPreviewRenderer.PreviewContext)) {
            if (this.mValue == null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    try {
                        return Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: c.a.a.a1.q
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return MainThreadInitializedObject.this.b(context);
                            }
                        }).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new RuntimeException(e);
                    }
                }
                this.mValue = TraceHelper.whitelistIpcs("main.thread.object", new Supplier() { // from class: c.a.a.a1.p
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return MainThreadInitializedObject.this.a(context);
                    }
                });
            }
            return this.mValue;
        }
        LauncherPreviewRenderer.PreviewContext previewContext = (LauncherPreviewRenderer.PreviewContext) context;
        ObjectProvider objectProvider = this.mProvider;
        Objects.requireNonNull(previewContext);
        if (!LauncherPreviewRenderer.PreviewContext.WHITELIST.contains(this)) {
            throw new IllegalStateException("Leaking unknown objects");
        }
        if (this == LauncherAppState.INSTANCE) {
            throw new IllegalStateException("Should not use MainThreadInitializedObject to initialize this with PreviewContext");
        }
        if (this == InvariantDeviceProfile.INSTANCE) {
            return previewContext.mIdp;
        }
        if (previewContext.mObjectMap.containsKey(this)) {
            return previewContext.mObjectMap.get(this);
        }
        Object obj = objectProvider.get(previewContext);
        previewContext.mObjectMap.put(this, obj);
        return obj;
    }

    public void initializeForTesting(Object obj) {
        this.mValue = obj;
    }
}
