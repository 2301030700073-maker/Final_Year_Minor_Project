package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.fragment.R$styleable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    public final FragmentManager mFragmentManager;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        FragmentStateManager createOrGetFragmentStateManager;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        FragmentManager fragmentManager = this.mFragmentManager;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, fragmentManager);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z = Fragment.class.isAssignableFrom(FragmentManager.AnonymousClass3.loadClass(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    Fragment findFragmentById = resourceId != -1 ? fragmentManager.findFragmentById(resourceId) : null;
                    if (findFragmentById == null && string != null) {
                        findFragmentById = fragmentManager.findFragmentByTag(string);
                    }
                    if (findFragmentById == null && id != -1) {
                        findFragmentById = fragmentManager.findFragmentById(id);
                    }
                    if (findFragmentById == null) {
                        FragmentManager.AnonymousClass3 fragmentFactory = fragmentManager.getFragmentFactory();
                        context.getClassLoader();
                        findFragmentById = fragmentFactory.instantiate(attributeValue);
                        findFragmentById.mFromLayout = true;
                        findFragmentById.mFragmentId = resourceId != 0 ? resourceId : id;
                        findFragmentById.mContainerId = id;
                        findFragmentById.mTag = string;
                        findFragmentById.mInLayout = true;
                        findFragmentById.mFragmentManager = fragmentManager;
                        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragmentManager.mHost;
                        findFragmentById.mHost = fragmentActivity$HostCallbacks;
                        findFragmentById.onInflate(fragmentActivity$HostCallbacks.context, attributeSet, findFragmentById.mSavedFragmentState);
                        createOrGetFragmentStateManager = fragmentManager.addFragment(findFragmentById);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Fragment " + findFragmentById + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (findFragmentById.mInLayout) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        findFragmentById.mInLayout = true;
                        findFragmentById.mFragmentManager = fragmentManager;
                        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks2 = fragmentManager.mHost;
                        findFragmentById.mHost = fragmentActivity$HostCallbacks2;
                        findFragmentById.onInflate(fragmentActivity$HostCallbacks2.context, attributeSet, findFragmentById.mSavedFragmentState);
                        createOrGetFragmentStateManager = fragmentManager.createOrGetFragmentStateManager(findFragmentById);
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + findFragmentById + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
                    FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(findFragmentById, "Attempting to use <fragment> tag to add fragment " + findFragmentById + " to container " + viewGroup));
                    FragmentStrictMode.getNearestPolicy(findFragmentById).getClass();
                    findFragmentById.mContainer = viewGroup;
                    createOrGetFragmentStateManager.moveToExpectedState();
                    createOrGetFragmentStateManager.ensureInflatedView();
                    View view2 = findFragmentById.mView;
                    if (view2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Fragment ", attributeValue, " did not create a view."));
                        return null;
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (findFragmentById.mView.getTag() == null) {
                        findFragmentById.mView.setTag(string);
                    }
                    findFragmentById.mView.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(this, createOrGetFragmentStateManager));
                    return findFragmentById.mView;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
