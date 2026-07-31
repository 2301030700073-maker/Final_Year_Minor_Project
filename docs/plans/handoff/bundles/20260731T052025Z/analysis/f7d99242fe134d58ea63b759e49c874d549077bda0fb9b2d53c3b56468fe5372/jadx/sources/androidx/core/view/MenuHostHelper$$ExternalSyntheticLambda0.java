package androidx.core.view;

import android.util.Log;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.runtime.MutableState;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuHostHelper$$ExternalSyntheticLambda0 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ MenuHostHelper$$ExternalSyntheticLambda0(MenuHostHelper menuHostHelper, FragmentManager.AnonymousClass2 anonymousClass2) {
        this.$r8$classId = 0;
        this.f$0 = menuHostHelper;
        this.f$2 = anonymousClass2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                MenuHostHelper menuHostHelper = (MenuHostHelper) obj2;
                Runnable runnable = (Runnable) menuHostHelper.mOnInvalidateMenuCallback;
                CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) menuHostHelper.mMenuProviders;
                FragmentManager.AnonymousClass2 anonymousClass2 = (FragmentManager.AnonymousClass2) obj;
                Lifecycle.Event.Companion.getClass();
                if (event != Lifecycle.Event.ON_RESUME) {
                    if (event != Lifecycle.Event.ON_DESTROY) {
                        if (event == Lifecycle.Event.Companion.downFrom(Lifecycle.State.RESUMED)) {
                            copyOnWriteArrayList.remove(anonymousClass2);
                            runnable.run();
                            break;
                        }
                    } else {
                        menuHostHelper.removeMenuProvider(anonymousClass2);
                        break;
                    }
                } else {
                    copyOnWriteArrayList.add(anonymousClass2);
                    runnable.run();
                    break;
                }
                break;
            case 1:
                ComponentActivity.$r8$lambda$XCwb6u5X87zpWrZW4Zmu6tsKQC8((OnBackPressedDispatcher) obj2, (ComponentActivity) obj, lifecycleOwner, event);
                break;
            case 2:
                MutableState mutableState = (MutableState) obj;
                if (event == ((Lifecycle.Event) obj2)) {
                    ((Function0) mutableState.getValue()).invoke();
                    break;
                }
                break;
            default:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (event == Lifecycle.Event.ON_RESUME && ((List) fragmentNavigator.getState().backStack.$$delegate_0.getValue()).contains(navBackStackEntry)) {
                    if (FragmentNavigator.isLoggingEnabled()) {
                        Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching RESUMED");
                    }
                    fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    if (FragmentNavigator.isLoggingEnabled()) {
                        Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching DESTROYED");
                    }
                    fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ MenuHostHelper$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
    }
}
