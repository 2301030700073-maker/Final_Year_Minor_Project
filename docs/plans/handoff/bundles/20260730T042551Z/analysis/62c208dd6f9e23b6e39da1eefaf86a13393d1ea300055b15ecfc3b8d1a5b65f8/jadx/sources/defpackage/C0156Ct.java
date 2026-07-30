package defpackage;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Property;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;

/* renamed from: Ct, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0156Ct {

    /* renamed from: do, reason: not valid java name */
    public final C2680eE<String, C0200Et> f442do = new C2680eE<>();

    /* renamed from: if, reason: not valid java name */
    public final C2680eE<String, PropertyValuesHolder[]> f443if = new C2680eE<>();

    /* renamed from: do, reason: not valid java name */
    public static C0156Ct m308do(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m310if(context, resourceId);
    }

    /* renamed from: for, reason: not valid java name */
    public static C0156Ct m309for(ArrayList arrayList) {
        C0156Ct c0156Ct = new C0156Ct();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c0156Ct.m313goto(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = C2785g1.f13026do;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = C2785g1.f13025do;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = C2785g1.f13029do;
            }
            C0200Et c0200Et = new C0200Et(startDelay, duration, interpolator);
            c0200Et.f916do = objectAnimator.getRepeatCount();
            c0200Et.f919if = objectAnimator.getRepeatMode();
            c0156Ct.f442do.put(propertyName, c0200Et);
        }
        return c0156Ct;
    }

    /* renamed from: if, reason: not valid java name */
    public static C0156Ct m310if(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m309for(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m309for(arrayList);
        } catch (Exception unused) {
            Integer.toHexString(i);
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final C0200Et m311case(String str) {
        C2680eE<String, C0200Et> c2680eE = this.f442do;
        if (c2680eE.getOrDefault(str, null) != null) {
            return c2680eE.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m312else(String str) {
        return this.f443if.getOrDefault(str, null) != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0156Ct) {
            return this.f442do.equals(((C0156Ct) obj).f442do);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m313goto(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f443if.put(str, propertyValuesHolderArr);
    }

    public final int hashCode() {
        return this.f442do.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public final ObjectAnimator m314new(String str, ExtendedFloatingActionButton extendedFloatingActionButton, Property property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(extendedFloatingActionButton, m315try(str));
        ofPropertyValuesHolder.setProperty(property);
        m311case(str).m508do(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    public final String toString() {
        return "\n" + C0156Ct.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f442do + "}\n";
    }

    /* renamed from: try, reason: not valid java name */
    public final PropertyValuesHolder[] m315try(String str) {
        if (!m312else(str)) {
            throw new IllegalArgumentException();
        }
        PropertyValuesHolder[] orDefault = this.f443if.getOrDefault(str, null);
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[orDefault.length];
        for (int i = 0; i < orDefault.length; i++) {
            propertyValuesHolderArr[i] = orDefault[i].clone();
        }
        return propertyValuesHolderArr;
    }
}
