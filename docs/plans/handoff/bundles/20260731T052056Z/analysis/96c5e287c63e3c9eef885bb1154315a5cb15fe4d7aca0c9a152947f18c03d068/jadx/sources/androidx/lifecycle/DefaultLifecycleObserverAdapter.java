package androidx.lifecycle;

import android.os.Handler;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedCallback$OnBackPressedEventHandler;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher$addCallback$observer$1$WhenMappings;
import androidx.lifecycle.ClassesInfoCache;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.adapter.FragmentViewHolder;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object defaultLifecycleObserver;
    public final Object lifecycleEventObserver;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle$Event.values().length];
            try {
                iArr[Lifecycle$Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle$Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle$Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle$Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle$Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle$Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle$Event.ON_ANY.ordinal()] = 7;
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
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        int i = this.$r8$classId;
        Object obj = this.lifecycleEventObserver;
        Object obj2 = this.defaultLifecycleObserver;
        switch (i) {
            case 0:
                DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) obj2;
                switch (WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()]) {
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
                    case 7:
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("ON_ANY must not been send by anybody");
                        break;
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        break;
                }
                LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) obj;
                if (lifecycleEventObserver != null) {
                    lifecycleEventObserver.onStateChanged(lifecycleOwner, lifecycle$Event);
                    break;
                }
                break;
            case 1:
                OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler = (OnBackPressedCallback$OnBackPressedEventHandler) obj2;
                int i2 = OnBackPressedDispatcher$addCallback$observer$1$WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()];
                if (i2 == 1) {
                    onBackPressedCallback$OnBackPressedEventHandler.setLifecycleActive(true);
                    break;
                } else if (i2 == 2) {
                    onBackPressedCallback$OnBackPressedEventHandler.setLifecycleActive(false);
                    break;
                } else if (i2 == 3) {
                    onBackPressedCallback$OnBackPressedEventHandler.remove();
                    ((LifecycleRegistry) obj).removeObserver(this);
                    break;
                }
                break;
            case 2:
                if (lifecycle$Event == Lifecycle$Event.ON_START) {
                    ((LifecycleRegistry) obj2).removeObserver(this);
                    ((AndroidSvg) obj).runOnNextRecreation();
                    break;
                }
                break;
            case 3:
                LifecycleObserver lifecycleObserver = (LifecycleObserver) obj2;
                HashMap hashMap = ((ClassesInfoCache.CallbackInfo) obj).mEventToHandlers;
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(lifecycle$Event), lifecycleOwner, lifecycle$Event, lifecycleObserver);
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(Lifecycle$Event.ON_ANY), lifecycleOwner, lifecycle$Event, lifecycleObserver);
                break;
            case 4:
                FragmentViewHolder fragmentViewHolder = (FragmentViewHolder) obj2;
                FragmentStateAdapter fragmentStateAdapter = (FragmentStateAdapter) obj;
                if (!fragmentStateAdapter.mFragmentManager.isStateSaved()) {
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    if (((FrameLayout) fragmentViewHolder.itemView).isAttachedToWindow()) {
                        fragmentStateAdapter.placeFragmentInViewHolder(fragmentViewHolder);
                        break;
                    }
                }
                break;
            default:
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    ((Handler) obj2).removeCallbacks((LiveData$1) obj);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ DefaultLifecycleObserverAdapter(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.defaultLifecycleObserver = obj;
        this.lifecycleEventObserver = obj2;
    }

    public DefaultLifecycleObserverAdapter(OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler, OnBackPressedDispatcher onBackPressedDispatcher, LifecycleRegistry lifecycleRegistry) {
        this.$r8$classId = 1;
        this.defaultLifecycleObserver = onBackPressedCallback$OnBackPressedEventHandler;
        this.lifecycleEventObserver = lifecycleRegistry;
    }

    public DefaultLifecycleObserverAdapter(FragmentStateAdapter fragmentStateAdapter, FragmentViewHolder fragmentViewHolder) {
        this.$r8$classId = 4;
        this.lifecycleEventObserver = fragmentStateAdapter;
        this.defaultLifecycleObserver = fragmentViewHolder;
    }
}
