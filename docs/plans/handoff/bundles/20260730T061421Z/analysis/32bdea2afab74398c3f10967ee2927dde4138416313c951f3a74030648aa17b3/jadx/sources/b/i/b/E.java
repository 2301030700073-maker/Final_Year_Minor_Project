package b.i.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;

/* loaded from: classes.dex */
public class E implements LayoutInflater.Factory2 {

    /* renamed from: a, reason: collision with root package name */
    public final X f841a;

    public E(X x) {
        this.f841a = x;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        C0107f0 h;
        if (B.class.getName().equals(str)) {
            return new B(context, attributeSet, this.f841a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.i.a.f827a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !L.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        r G = resourceId != -1 ? this.f841a.G(resourceId) : null;
        if (G == null && string != null) {
            G = this.f841a.H(string);
        }
        if (G == null && id != -1) {
            G = this.f841a.G(id);
        }
        if (X.M(2)) {
            StringBuilder f = c.a.c.a.a.f("onCreateView: id=0x");
            f.append(Integer.toHexString(resourceId));
            f.append(" fname=");
            f.append(attributeValue);
            f.append(" existing=");
            f.append(G);
            Log.v("FragmentManager", f.toString());
        }
        if (G == null) {
            L J = this.f841a.J();
            context.getClassLoader();
            G = J.a(attributeValue);
            G.mFromLayout = true;
            G.mFragmentId = resourceId != 0 ? resourceId : id;
            G.mContainerId = id;
            G.mTag = string;
            G.mInLayout = true;
            X x = this.f841a;
            G.mFragmentManager = x;
            D d2 = x.q;
            G.mHost = d2;
            G.onInflate(d2.f837b, attributeSet, G.mSavedFragmentState);
            h = this.f841a.h(G);
            this.f841a.b(G);
        } else {
            if (G.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            G.mInLayout = true;
            X x2 = this.f841a;
            G.mFragmentManager = x2;
            D d3 = x2.q;
            G.mHost = d3;
            G.onInflate(d3.f837b, attributeSet, G.mSavedFragmentState);
            h = this.f841a.h(G);
        }
        h.j();
        h.i();
        View view2 = G.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (G.mView.getTag() == null) {
                G.mView.setTag(string);
            }
            return G.mView;
        }
        throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
    }
}
