package androidx.navigation.compose;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DialogHostKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ DialogHostKt$$ExternalSyntheticLambda2(NavBackStackEntry navBackStackEntry, List list, boolean z) {
        this.$r8$classId = 0;
        this.f$0 = navBackStackEntry;
        this.f$1 = z;
        this.f$2 = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final int i2 = 2;
        final int i3 = 3;
        final int i4 = 0;
        Object obj2 = this.f$2;
        Object obj3 = this.f$0;
        final boolean z = this.f$1;
        switch (i) {
            case 0:
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                final List list = (List) obj2;
                LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda4
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
                        boolean z2 = z;
                        List list2 = list;
                        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                        if (z2 && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (lifecycle$Event == Lifecycle$Event.ON_START && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                            list2.remove(navBackStackEntry2);
                        }
                    }
                };
                navBackStackEntry.impl.lifecycle.addObserver(lifecycleEventObserver);
                break;
            case 1:
                final PagerState pagerState = (PagerState) obj3;
                final CoroutineScope coroutineScope = (CoroutineScope) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (!z) {
                    Function0 function0 = new Function0() { // from class: androidx.compose.foundation.pager.PagerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i5 = i2;
                            int i6 = 2;
                            boolean z2 = false;
                            Continuation continuation = null;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            PagerState pagerState2 = pagerState;
                            int i7 = 1;
                            switch (i5) {
                                case 0:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 1:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 2:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                default:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                            }
                        }
                    };
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                    semanticsPropertyReceiver.set(SemanticsActions.PageLeft, new AccessibilityAction(null, function0));
                    semanticsPropertyReceiver.set(SemanticsActions.PageRight, new AccessibilityAction(null, new Function0() { // from class: androidx.compose.foundation.pager.PagerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i5 = i3;
                            int i6 = 2;
                            boolean z2 = false;
                            Continuation continuation = null;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            PagerState pagerState2 = pagerState;
                            int i7 = 1;
                            switch (i5) {
                                case 0:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 1:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 2:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                default:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                            }
                        }
                    }));
                    break;
                } else {
                    Function0 function02 = new Function0() { // from class: androidx.compose.foundation.pager.PagerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i5 = i4;
                            int i6 = 2;
                            boolean z2 = false;
                            Continuation continuation = null;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            PagerState pagerState2 = pagerState;
                            int i7 = 1;
                            switch (i5) {
                                case 0:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 1:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 2:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                default:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                            }
                        }
                    };
                    KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                    semanticsPropertyReceiver.set(SemanticsActions.PageUp, new AccessibilityAction(null, function02));
                    final int i5 = 1;
                    semanticsPropertyReceiver.set(SemanticsActions.PageDown, new AccessibilityAction(null, new Function0() { // from class: androidx.compose.foundation.pager.PagerKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i52 = i5;
                            int i6 = 2;
                            boolean z2 = false;
                            Continuation continuation = null;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            PagerState pagerState2 = pagerState;
                            int i7 = 1;
                            switch (i52) {
                                case 0:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 1:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                case 2:
                                    if (pagerState2.getCanScrollBackward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i7), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                                default:
                                    if (pagerState2.getCanScrollForward()) {
                                        AwaitKt.launch$default(coroutineScope2, null, null, new PagerState$requestScrollToPage$1(pagerState2, continuation, i6), 3);
                                        z2 = true;
                                    }
                                    return Boolean.valueOf(z2);
                            }
                        }
                    }));
                    break;
                }
            default:
                String str = (String) obj3;
                SnackbarHostState.SnackbarDataImpl snackbarDataImpl = (SnackbarHostState.SnackbarDataImpl) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                if (z) {
                    KProperty[] kPropertyArr3 = SemanticsPropertiesKt.$$delegatedProperties;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.LiveRegion;
                    KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[3];
                    semanticsPropertyReceiver2.set(semanticsPropertyKey, new LiveRegionMode(0));
                }
                NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0 = new NavBackStackEntry$$ExternalSyntheticLambda0(22, snackbarDataImpl);
                KProperty[] kPropertyArr4 = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver2.set(SemanticsActions.Dismiss, new AccessibilityAction(null, navBackStackEntry$$ExternalSyntheticLambda0));
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.PaneTitle;
                KProperty kProperty2 = SemanticsPropertiesKt.$$delegatedProperties[2];
                semanticsPropertyReceiver2.set(semanticsPropertyKey2, str);
                break;
        }
        return unit;
    }

    public /* synthetic */ DialogHostKt$$ExternalSyntheticLambda2(int i, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i;
        this.f$1 = z;
        this.f$0 = obj;
        this.f$2 = obj2;
    }
}
