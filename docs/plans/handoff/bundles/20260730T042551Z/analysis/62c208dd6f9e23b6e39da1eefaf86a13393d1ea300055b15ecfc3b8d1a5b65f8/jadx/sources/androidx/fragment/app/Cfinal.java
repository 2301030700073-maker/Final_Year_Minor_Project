package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.AbstractC0190Ej;
import defpackage.C0315Kc;
import defpackage.Cif;

/* renamed from: androidx.fragment.app.final, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfinal implements LayoutInflater.Factory2 {

    /* renamed from: do, reason: not valid java name */
    public final FragmentManager f6958do;

    /* renamed from: androidx.fragment.app.final$do, reason: invalid class name */
    public class Cdo implements View.OnAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Cwhile f6960do;

        public Cdo(Cwhile cwhile) {
            this.f6960do = cwhile;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            Cwhile cwhile = this.f6960do;
            Fragment fragment = cwhile.f7052do;
            cwhile.m4220break();
            Cstatic.m4189else((ViewGroup) fragment.mView.getParent(), Cfinal.this.f6958do).m4195try();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public Cfinal(FragmentManager fragmentManager) {
        this.f6958do = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        Cwhile m4120case;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        FragmentManager fragmentManager = this.f6958do;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, fragmentManager);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0315Kc.f1840new);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                z = Fragment.class.isAssignableFrom(Cconst.m4165do(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (z) {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                Fragment m4139package = resourceId != -1 ? fragmentManager.m4139package(resourceId) : null;
                if (m4139package == null && string != null) {
                    m4139package = fragmentManager.m4140private(string);
                }
                if (m4139package == null && id != -1) {
                    m4139package = fragmentManager.m4139package(id);
                }
                if (m4139package == null) {
                    Cconst m4144strictfp = fragmentManager.m4144strictfp();
                    context.getClassLoader();
                    m4139package = Fragment.instantiate(FragmentManager.this.f6860do.f881do, attributeValue, null);
                    m4139package.mFromLayout = true;
                    m4139package.mFragmentId = resourceId != 0 ? resourceId : id;
                    m4139package.mContainerId = id;
                    m4139package.mTag = string;
                    m4139package.mInLayout = true;
                    m4139package.mFragmentManager = fragmentManager;
                    AbstractC0190Ej<?> abstractC0190Ej = fragmentManager.f6860do;
                    m4139package.mHost = abstractC0190Ej;
                    m4139package.onInflate(abstractC0190Ej.f881do, attributeSet, m4139package.mSavedFragmentState);
                    m4120case = fragmentManager.m4126do(m4139package);
                    if (FragmentManager.m4115interface(2)) {
                        m4139package.toString();
                        Integer.toHexString(resourceId);
                    }
                } else {
                    if (m4139package.mInLayout) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                    }
                    m4139package.mInLayout = true;
                    m4139package.mFragmentManager = fragmentManager;
                    AbstractC0190Ej<?> abstractC0190Ej2 = fragmentManager.f6860do;
                    m4139package.mHost = abstractC0190Ej2;
                    m4139package.onInflate(abstractC0190Ej2.f881do, attributeSet, m4139package.mSavedFragmentState);
                    m4120case = fragmentManager.m4120case(m4139package);
                    if (FragmentManager.m4115interface(2)) {
                        m4139package.toString();
                        Integer.toHexString(resourceId);
                    }
                }
                m4139package.mContainer = (ViewGroup) view;
                m4120case.m4220break();
                m4120case.m4232this();
                View view2 = m4139package.mView;
                if (view2 == null) {
                    throw new IllegalStateException(Cif.m6908case("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (m4139package.mView.getTag() == null) {
                    m4139package.mView.setTag(string);
                }
                m4139package.mView.addOnAttachStateChangeListener(new Cdo(m4120case));
                return m4139package.mView;
            }
        }
        return null;
    }
}
