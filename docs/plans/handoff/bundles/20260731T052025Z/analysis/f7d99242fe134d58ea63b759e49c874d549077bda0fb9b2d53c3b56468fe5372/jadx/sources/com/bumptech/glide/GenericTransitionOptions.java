package com.bumptech.glide;

import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.util.Util;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GenericTransitionOptions implements Cloneable {
    public NoTransition.NoAnimationFactory transitionFactory;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final GenericTransitionOptions m924clone() {
        try {
            return (GenericTransitionOptions) super.clone();
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof GenericTransitionOptions) && equals$com$bumptech$glide$TransitionOptions(obj);
    }

    public final boolean equals$com$bumptech$glide$TransitionOptions(Object obj) {
        if (obj instanceof GenericTransitionOptions) {
            return Util.bothNullOrEqual(this.transitionFactory, ((GenericTransitionOptions) obj).transitionFactory);
        }
        return false;
    }

    public final int hashCode() {
        return hashCode$com$bumptech$glide$TransitionOptions();
    }

    public final int hashCode$com$bumptech$glide$TransitionOptions() {
        NoTransition.NoAnimationFactory noAnimationFactory = this.transitionFactory;
        if (noAnimationFactory != null) {
            return noAnimationFactory.hashCode();
        }
        return 0;
    }
}
