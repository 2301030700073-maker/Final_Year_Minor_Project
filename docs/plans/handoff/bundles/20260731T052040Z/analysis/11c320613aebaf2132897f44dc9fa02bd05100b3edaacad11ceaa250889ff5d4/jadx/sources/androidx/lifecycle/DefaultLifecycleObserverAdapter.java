package androidx.lifecycle;

import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher$addCallback$observer$1$WhenMappings;
import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object defaultLifecycleObserver;
    public final Object lifecycleEventObserver;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        this.defaultLifecycleObserver = lifecycleObserver;
        ClassesInfoCache classesInfoCache = ClassesInfoCache.sInstance;
        Class<?> cls = lifecycleObserver.getClass();
        ClassesInfoCache.CallbackInfo callbackInfo = (ClassesInfoCache.CallbackInfo) classesInfoCache.mCallbackMap.get(cls);
        this.lifecycleEventObserver = callbackInfo == null ? classesInfoCache.createInfo(cls, null) : callbackInfo;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.defaultLifecycleObserver;
        Object obj2 = this.lifecycleEventObserver;
        switch (i) {
            case 0:
                DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) obj;
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
                    case 7:
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("ON_ANY must not been send by anybody");
                        break;
                    default:
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        break;
                }
                LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) obj2;
                if (lifecycleEventObserver != null) {
                    lifecycleEventObserver.onStateChanged(lifecycleOwner, event);
                    break;
                }
                break;
            case 1:
                OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = (OnBackPressedCallback.OnBackPressedEventHandler) obj;
                int i2 = OnBackPressedDispatcher$addCallback$observer$1$WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                if (i2 == 1) {
                    onBackPressedEventHandler.setLifecycleActive(true);
                    break;
                } else if (i2 == 2) {
                    onBackPressedEventHandler.setLifecycleActive(false);
                    break;
                } else if (i2 == 3) {
                    onBackPressedEventHandler.remove();
                    ((Lifecycle) obj2).removeObserver(this);
                    break;
                }
                break;
            case 2:
                if (event == Lifecycle.Event.ON_START) {
                    ((Lifecycle) obj).removeObserver(this);
                    ((SavedStateRegistry) obj2).runOnNextRecreation();
                    break;
                }
                break;
            default:
                HashMap hashMap = ((ClassesInfoCache.CallbackInfo) obj2).mEventToHandlers;
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(event), lifecycleOwner, event, obj);
                ClassesInfoCache.CallbackInfo.invokeMethodsForEvent((List) hashMap.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
                break;
        }
    }

    public DefaultLifecycleObserverAdapter(DefaultLifecycleObserver defaultLifecycleObserver, LifecycleEventObserver lifecycleEventObserver) {
        defaultLifecycleObserver.getClass();
        this.defaultLifecycleObserver = defaultLifecycleObserver;
        this.lifecycleEventObserver = lifecycleEventObserver;
    }

    public DefaultLifecycleObserverAdapter(Lifecycle lifecycle, SavedStateRegistry savedStateRegistry) {
        this.defaultLifecycleObserver = lifecycle;
        this.lifecycleEventObserver = savedStateRegistry;
    }

    public DefaultLifecycleObserverAdapter(OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler, OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle) {
        this.defaultLifecycleObserver = onBackPressedEventHandler;
        this.lifecycleEventObserver = lifecycle;
    }
}
