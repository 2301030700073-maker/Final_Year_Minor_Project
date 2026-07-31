package org.wikipedia.settings;

import android.view.View;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.Measurable;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.fragment.app.SpecialEffectsController$Operation$State;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceScreen;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.value.Keyframe;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BasePreferenceLoader implements AnimatableValue, Annotated, ReceiverValue, PreferenceLoader {
    public final /* synthetic */ int $r8$classId;
    public final Object fragment;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 1 ? 3 : 2];
        if (i != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i != 1) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i == 1) {
            throw new IllegalStateException(format);
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0$1(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[0] = "receiverType";
        }
        if (i == 1) {
            objArr[1] = "getType";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/AbstractReceiverValue";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 1 && i != 2) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public BasePreferenceLoader(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 2:
                MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
                this.fragment = new MutableIntObjectMap();
                break;
            case 3:
                this.fragment = new Object();
                break;
            default:
                this.fragment = Updater.mutableStateOf$default(Boolean.FALSE);
                break;
        }
    }

    public abstract void clearWatchSet$runtime(SendChannel sendChannel);

    public abstract void commitSubscriptionChanges$runtime();

    public abstract void dispose$runtime();

    public Preference findPreference(int i) {
        PreferenceScreen preferenceScreen;
        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.fragment;
        String string = preferenceFragmentCompat.requireActivity().getString(i);
        PreferenceManager preferenceManager = preferenceFragmentCompat.mPreferenceManager;
        Preference preference = null;
        if (preferenceManager != null && (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) != null) {
            preference = preferenceScreen.findPreference(string);
        }
        preference.getClass();
        return preference;
    }

    /* renamed from: getAndMeasure--hBUhpc */
    public abstract LazyLayoutMeasuredItem mo153getAndMeasurehBUhpc(int i, int i2, int i3, long j);

    public Annotations getAnnotations() {
        Annotations annotations = (Annotations) this.fragment;
        if (annotations != null) {
            return annotations;
        }
        $$$reportNull$$$0(1);
        throw null;
    }

    public abstract Object getCurrentState();

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List getKeyframes() {
        return (List) this.fragment;
    }

    /* renamed from: getPlaceables-3p2s80s, reason: not valid java name */
    public List m913getPlaceables3p2s80s(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j) {
        MutableIntObjectMap mutableIntObjectMap = (MutableIntObjectMap) this.fragment;
        List list = (List) mutableIntObjectMap.get(i);
        if (list != null) {
            return list;
        }
        List compose = lazyLayoutMeasureScopeImpl.compose(i);
        int size = compose.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((Measurable) compose.get(i2)).mo512measureBRTryo0(j));
        }
        mutableIntObjectMap.set(i, arrayList);
        return arrayList;
    }

    public abstract Object getTargetState();

    public KotlinType getType() {
        KotlinType kotlinType = (KotlinType) this.fragment;
        if (kotlinType != null) {
            return kotlinType;
        }
        $$$reportNull$$$0$1(1);
        throw null;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        List list = (List) this.fragment;
        return list.isEmpty() || (list.size() == 1 && ((Keyframe) list.get(0)).isStatic());
    }

    public boolean isVisibilityUnchanged() {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State;
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.fragment;
        View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
        if (view != null) {
            SpecialEffectsController$Operation$State.Companion.getClass();
            specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.Companion.asOperationState(view);
        } else {
            specialEffectsController$Operation$State = null;
        }
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = specialEffectsController$FragmentStateManagerOperation.finalState;
        if (specialEffectsController$Operation$State == specialEffectsController$Operation$State2) {
            return true;
        }
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State3 = SpecialEffectsController$Operation$State.VISIBLE;
        return (specialEffectsController$Operation$State == specialEffectsController$Operation$State3 || specialEffectsController$Operation$State2 == specialEffectsController$Operation$State3) ? false : true;
    }

    public void loadPreferences(int i) {
        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.fragment;
        PreferenceManager preferenceManager = preferenceFragmentCompat.mPreferenceManager;
        if (preferenceManager == null) {
            Gson$$ExternalSyntheticBUOutline0.m$1("This should be called after super.onCreate.");
            return;
        }
        PreferenceScreen inflateFromResource = preferenceManager.inflateFromResource(preferenceFragmentCompat.requireContext(), i, (PreferenceScreen) preferenceFragmentCompat.mPreferenceManager.mPreferenceScreen);
        PreferenceManager preferenceManager2 = preferenceFragmentCompat.mPreferenceManager;
        PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceManager2.mPreferenceScreen;
        if (inflateFromResource != preferenceScreen) {
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
            preferenceManager2.mPreferenceScreen = inflateFromResource;
            preferenceFragmentCompat.mHavePrefs = true;
            if (preferenceFragmentCompat.mInitDone) {
                PreferenceFragmentCompat.AnonymousClass1 anonymousClass1 = preferenceFragmentCompat.mHandler;
                if (anonymousClass1.hasMessages(1)) {
                    return;
                }
                anonymousClass1.obtainMessage(1).sendToTarget();
            }
        }
    }

    public abstract Function1 readObserverFor$runtime(SendChannel sendChannel);

    public abstract void reportSnapshotFlowCancellation$runtime(Channel channel);

    public abstract void setCurrentState$animation_core(Object obj);

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                StringBuilder sb = new StringBuilder();
                List list = (List) this.fragment;
                if (!list.isEmpty()) {
                    sb.append("values=");
                    sb.append(Arrays.toString(list.toArray()));
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public abstract void transitionConfigured$animation_core(Transition transition);

    public abstract void transitionRemoved$animation_core();

    public BasePreferenceLoader(Annotations annotations) {
        this.$r8$classId = 6;
        if (annotations != null) {
            this.fragment = annotations;
        } else {
            $$$reportNull$$$0(0);
            throw null;
        }
    }

    public BasePreferenceLoader(KotlinType kotlinType) {
        this.$r8$classId = 7;
        if (kotlinType != null) {
            this.fragment = kotlinType;
        } else {
            $$$reportNull$$$0$1(0);
            throw null;
        }
    }

    public /* synthetic */ BasePreferenceLoader(int i, Object obj) {
        this.$r8$classId = i;
        this.fragment = obj;
    }

    public BasePreferenceLoader(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        this.$r8$classId = 4;
        specialEffectsController$FragmentStateManagerOperation.getClass();
        this.fragment = specialEffectsController$FragmentStateManagerOperation;
    }
}
