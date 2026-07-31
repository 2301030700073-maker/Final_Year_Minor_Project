package androidx.lifecycle;

import android.os.Handler;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher$addCallback$observer$1$WhenMappings;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentViewHolder;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object defaultLifecycleObserver;
    public final Object lifecycleEventObserver;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DefaultLifecycleObserverAdapter(LifecycleObserver lifecycleObserver) {
        this.$r8$classId = 3;
        this.defaultLifecycleObserver = lifecycleObserver;
        ClassesInfoCache classesInfoCache = ClassesInfoCache.sInstance;
        Class<?> cls = lifecycleObserver.getClass();
        ClassesInfoCache.CallbackInfo callbackInfo = (ClassesInfoCache.CallbackInfo) classesInfoCache.mCallbackMap.get(cls);
        this.lifecycleEventObserver = callbackInfo == null ? classesInfoCache.createInfo(cls, null) : callbackInfo;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.lifecycleEventObserver;
        Object obj2 = this.defaultLifecycleObserver;
        switch (i) {
            case 0:
                DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) obj2;
                switch (WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
                    case 1:
                        defaultLifecycleObserver.onCreate(lifecycleOwner);
                        break;
                    case 2:
                        defaultLifecycleObserver.onStart(lifecycleOwner);
                        break;
                    case 3:
                        defaultLifecycleObserver.onResume(lifecycleOwner);
                        break;
                    case 4:
                        defaultLifecycleObserver.onPause(lifecycleOwner);
                        break;
                    case 5:
                        defaultLifecycleObserver.onStop(lifecycleOwner);
                        break;
                    case 6:
                        defaultLifecycleObserver.onDestroy(lifecycleOwner);
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        UriKt$$ExternalSyntheticBUOutline0.m("ON_ANY must not been send by anybody");
                        break;
                    default:
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                }
                LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) obj;
                if (lifecycleEventObserver != null) {
                    lifecycleEventObserver.onStateChanged(lifecycleOwner, event);
                    break;
                }
                break;
            case 1:
                OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = (OnBackPressedCallback.OnBackPressedEventHandler) obj2;
                int i2 = OnBackPressedDispatcher$addCallback$observer$1$WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                if (i2 == 1) {
                    onBackPressedEventHandler.setLifecycleActive(true);
                    break;
                } else if (i2 == 2) {
                    onBackPressedEventHandler.setLifecycleActive(false);
                    break;
                } else if (i2 == 3) {
                    onBackPressedEventHandler.remove();
                    ((Lifecycle) obj).removeObserver(this);
                    break;
                }
                break;
            case 2:
                if (event == Lifecycle.Event.ON_START) {
                    ((Lifecycle) obj2).removeObserver(this);
                    ((Base64Util) obj).runOnNextRecreation();
                    break;
                }
                break;
            case 3:
                HashMap hashMap = ((ClassesInfoCache.CallbackInfo) obj).mEventToHandlers;
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(event), lifecycleOwner, event, obj2);
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj2);
                break;
            case 4:
                FragmentViewHolder fragmentViewHolder = (FragmentViewHolder) obj2;
                MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = (MessageViewContainerFragment.MessageViewContainerAdapter) obj;
                if (!messageViewContainerAdapter.mFragmentManager.isStateSaved()) {
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    FrameLayout frameLayout = (FrameLayout) fragmentViewHolder.itemView;
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    if (frameLayout.isAttachedToWindow()) {
                        messageViewContainerAdapter.placeFragmentInViewHolder(fragmentViewHolder);
                        break;
                    }
                }
                break;
            default:
                if (event == Lifecycle.Event.ON_DESTROY) {
                    ((Handler) obj2).removeCallbacks((Fragment.AnonymousClass1) obj);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    break;
                }
                break;
        }
    }

    public DefaultLifecycleObserverAdapter(DefaultLifecycleObserver defaultLifecycleObserver, LifecycleEventObserver lifecycleEventObserver) {
        this.$r8$classId = 0;
        defaultLifecycleObserver.getClass();
        this.defaultLifecycleObserver = defaultLifecycleObserver;
        this.lifecycleEventObserver = lifecycleEventObserver;
    }

    public /* synthetic */ DefaultLifecycleObserverAdapter(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.defaultLifecycleObserver = obj;
        this.lifecycleEventObserver = obj2;
    }

    public DefaultLifecycleObserverAdapter(OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler, OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle) {
        this.$r8$classId = 1;
        this.defaultLifecycleObserver = onBackPressedEventHandler;
        this.lifecycleEventObserver = lifecycle;
    }

    public DefaultLifecycleObserverAdapter(MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter, FragmentViewHolder fragmentViewHolder) {
        this.$r8$classId = 4;
        this.lifecycleEventObserver = messageViewContainerAdapter;
        this.defaultLifecycleObserver = fragmentViewHolder;
    }
}
