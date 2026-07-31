package androidx.compose.material3;

import android.os.Bundle;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.InsetsPaddingValues;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.pager.PagerMeasureKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelStoreOwnerFactory$ViewModelStoreOwner$1;
import androidx.lifecycle.viewmodel.ViewModelStoreOwnerFactory$ViewModelStoreOwner$2;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation3.runtime.NavEntry;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.sqlite.SQLite;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import net.newpipe.app.model.Link;
import net.newpipe.app.screen.settings.SettingsHomeScreenKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TabKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ TabKt$$ExternalSyntheticLambda1(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.$r8$classId = 8;
        this.f$0 = mutexImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Lifecycle.State state;
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                Function2 function2 = (Function2) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    TabKt.TabBaselineLayout(function2, gapComposer, 0);
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 1:
                Placeable mo292measureBRTryo0 = ((Measurable) obj2).mo292measureBRTryo0(((Constraints) obj3).value);
                break;
            case 2:
                MovableContent movableContent = (MovableContent) obj4;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj) : ((GapComposer) composer2).changedInstance(obj) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.invokeMovableContentLambda(movableContent, gapComposer2.currentCompositionLocalScope(), obj, false);
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 3:
                ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) obj4;
                final NavEntry navEntry = (NavEntry) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(navEntry) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    Object obj5 = navEntry.contentKey;
                    SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) gapComposer3.consume(LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner);
                    boolean changed = gapComposer3.changed(viewModelStoreProvider) | gapComposer3.changed(obj5) | gapComposer3.changed(savedStateRegistryOwner);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        Bundle bundle = viewModelStoreProvider.defaultArgs;
                        CreationExtras creationExtras = viewModelStoreProvider.defaultCreationExtras;
                        ViewModelProvider$Factory viewModelProvider$Factory = viewModelStoreProvider.defaultFactory;
                        bundle.getClass();
                        creationExtras.getClass();
                        viewModelProvider$Factory.getClass();
                        MutableScatterMap mutableScatterMap = viewModelStoreProvider.getStateHolder().entries;
                        Object obj6 = mutableScatterMap.get(obj5);
                        if (obj6 == null) {
                            obj6 = new ViewModelStoreProvider.Entry(obj5);
                            mutableScatterMap.set(obj5, obj6);
                        }
                        ViewModelStore viewModelStore = ((ViewModelStoreProvider.Entry) obj6).store;
                        if (savedStateRegistryOwner == null) {
                            viewModelStore.getClass();
                            rememberedValue = new ViewModelStoreOwnerFactory$ViewModelStoreOwner$1(viewModelStore, viewModelProvider$Factory, creationExtras, bundle);
                        } else {
                            viewModelStore.getClass();
                            SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                            Lifecycle lifecycle = savedStateRegistryOwner.getLifecycle();
                            savedStateRegistry.getClass();
                            lifecycle.getClass();
                            rememberedValue = new ViewModelStoreOwnerFactory$ViewModelStoreOwner$2(savedStateRegistry, viewModelStore, lifecycle, viewModelProvider$Factory, creationExtras, bundle);
                        }
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) rememberedValue;
                    boolean changedInstance = gapComposer3.changedInstance(viewModelStoreProvider) | gapComposer3.changedInstance(obj5);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    Object obj7 = rememberedValue2;
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        Recomposer$$ExternalSyntheticLambda4 recomposer$$ExternalSyntheticLambda4 = new Recomposer$$ExternalSyntheticLambda4(viewModelStoreProvider, obj5, 28);
                        gapComposer3.updateRememberedValue(recomposer$$ExternalSyntheticLambda4);
                        obj7 = recomposer$$ExternalSyntheticLambda4;
                    }
                    Updater.DisposableEffect(viewModelStoreOwner, (Function1) obj7, gapComposer3);
                    Updater.CompositionLocalProvider(LocalViewModelStoreOwner.LocalViewModelStoreOwner.defaultProvidedValue$runtime(viewModelStoreOwner), Expect_jvmKt.rememberComposableLambda(1108866301, new Function2() { // from class: androidx.navigation3.scene.SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj8, Object obj9) {
                            int i2 = r2;
                            Unit unit2 = Unit.INSTANCE;
                            NavEntry navEntry2 = navEntry;
                            Composer composer4 = (Composer) obj8;
                            int intValue4 = ((Integer) obj9).intValue();
                            switch (i2) {
                                case 0:
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                        gapComposer4.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry2.Content(gapComposer4, 0);
                                        break;
                                    }
                                case 1:
                                    GapComposer gapComposer5 = (GapComposer) composer4;
                                    if (!gapComposer5.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry2.Content(gapComposer5, 0);
                                        break;
                                    }
                                case 2:
                                    GapComposer gapComposer6 = (GapComposer) composer4;
                                    if (!gapComposer6.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                        gapComposer6.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry2.Content(gapComposer6, 0);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer7 = (GapComposer) composer4;
                                    if (!gapComposer7.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                        gapComposer7.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry2.Content(gapComposer7, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, gapComposer3), gapComposer3, 56);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            case 4:
                SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj4;
                final NavEntry navEntry2 = (NavEntry) obj;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= ((GapComposer) composer4).changed(navEntry2) ? 4 : 2;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    saveableStateHolder.SaveableStateProvider(navEntry2.contentKey, Expect_jvmKt.rememberComposableLambda(121262920, new Function2() { // from class: androidx.navigation3.scene.SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj8, Object obj9) {
                            int i2 = r2;
                            Unit unit2 = Unit.INSTANCE;
                            NavEntry navEntry22 = navEntry2;
                            Composer composer42 = (Composer) obj8;
                            int intValue42 = ((Integer) obj9).intValue();
                            switch (i2) {
                                case 0:
                                    GapComposer gapComposer42 = (GapComposer) composer42;
                                    if (!gapComposer42.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer42.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer42, 0);
                                        break;
                                    }
                                case 1:
                                    GapComposer gapComposer5 = (GapComposer) composer42;
                                    if (!gapComposer5.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer5, 0);
                                        break;
                                    }
                                case 2:
                                    GapComposer gapComposer6 = (GapComposer) composer42;
                                    if (!gapComposer6.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer6.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer6, 0);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer7 = (GapComposer) composer42;
                                    if (!gapComposer7.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer7.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer7, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, gapComposer4), gapComposer4, 48);
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
            case 5:
                MutableState mutableState = (MutableState) obj4;
                final NavEntry navEntry3 = (NavEntry) obj;
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= ((GapComposer) composer5).changed(navEntry3) ? 4 : 2;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    List list = (List) mutableState.getValue();
                    r10 = (intValue5 & 14) != 4 ? 0 : 1;
                    Object rememberedValue3 = gapComposer5.rememberedValue();
                    if (r10 != 0 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(navEntry3, 23);
                        gapComposer5.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function1 = (Function1) rememberedValue3;
                    if (list instanceof RandomAccess) {
                        int size = list.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            if (((Boolean) function1.invoke(list.get(i2))).booleanValue()) {
                                state = Lifecycle.State.RESUMED;
                            }
                        }
                        state = Lifecycle.State.CREATED;
                    } else {
                        if (list == null || !list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                if (((Boolean) function1.invoke(it.next())).booleanValue()) {
                                    state = Lifecycle.State.RESUMED;
                                }
                            }
                        }
                        state = Lifecycle.State.CREATED;
                    }
                    final int i3 = 3;
                    Updater.CompositionLocalProvider(LocalLifecycleOwnerKt.LocalLifecycleOwner.defaultProvidedValue$runtime(Cookie.Companion.rememberLifecycleOwner(state, gapComposer5)), Expect_jvmKt.rememberComposableLambda(-1713684244, new Function2() { // from class: androidx.navigation3.scene.SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj8, Object obj9) {
                            int i22 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            NavEntry navEntry22 = navEntry3;
                            Composer composer42 = (Composer) obj8;
                            int intValue42 = ((Integer) obj9).intValue();
                            switch (i22) {
                                case 0:
                                    GapComposer gapComposer42 = (GapComposer) composer42;
                                    if (!gapComposer42.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer42.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer42, 0);
                                        break;
                                    }
                                case 1:
                                    GapComposer gapComposer52 = (GapComposer) composer42;
                                    if (!gapComposer52.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer52.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer52, 0);
                                        break;
                                    }
                                case 2:
                                    GapComposer gapComposer6 = (GapComposer) composer42;
                                    if (!gapComposer6.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer6.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer6, 0);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer7 = (GapComposer) composer42;
                                    if (!gapComposer7.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                        gapComposer7.skipToGroupEnd();
                                        break;
                                    } else {
                                        navEntry22.Content(gapComposer7, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, gapComposer5), gapComposer5, 56);
                    break;
                } else {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
                break;
            case 6:
                SnapshotStateMap snapshotStateMap = (SnapshotStateMap) obj4;
                final NavEntry navEntry4 = (NavEntry) obj;
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer6).changed(navEntry4) ? 4 : 2;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    Object obj8 = navEntry4.contentKey;
                    if (((Set) gapComposer6.consume(SceneSetupNavEntryDecoratorKt.LocalEntriesToExcludeFromCurrentScene)).contains(obj8)) {
                        gapComposer6.startReplaceGroup(1576267665);
                        gapComposer6.end(false);
                        break;
                    } else {
                        gapComposer6.startReplaceGroup(1574916499);
                        gapComposer6.startMovableGroup(1159182959, obj8);
                        Object rememberedValue4 = gapComposer6.rememberedValue();
                        if (rememberedValue4 == neverEqualPolicy) {
                            Object obj9 = snapshotStateMap.get(obj8);
                            if (obj9 == null) {
                                obj9 = new ComposableLambdaImpl(1032736913, true, new TabKt$$ExternalSyntheticLambda1(new MovableContent(), r8));
                                snapshotStateMap.put(obj8, obj9);
                            }
                            rememberedValue4 = (Function3) obj9;
                            gapComposer6.updateRememberedValue(rememberedValue4);
                        }
                        final int i4 = false ? 1 : 0;
                        ((Function3) rememberedValue4).invoke(Expect_jvmKt.rememberComposableLambda(-804085656, new Function2() { // from class: androidx.navigation3.scene.SceneSetupNavEntryDecorator$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj82, Object obj92) {
                                int i22 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                NavEntry navEntry22 = navEntry4;
                                Composer composer42 = (Composer) obj82;
                                int intValue42 = ((Integer) obj92).intValue();
                                switch (i22) {
                                    case 0:
                                        GapComposer gapComposer42 = (GapComposer) composer42;
                                        if (!gapComposer42.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                            gapComposer42.skipToGroupEnd();
                                            break;
                                        } else {
                                            navEntry22.Content(gapComposer42, 0);
                                            break;
                                        }
                                    case 1:
                                        GapComposer gapComposer52 = (GapComposer) composer42;
                                        if (!gapComposer52.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                            gapComposer52.skipToGroupEnd();
                                            break;
                                        } else {
                                            navEntry22.Content(gapComposer52, 0);
                                            break;
                                        }
                                    case 2:
                                        GapComposer gapComposer62 = (GapComposer) composer42;
                                        if (!gapComposer62.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                            gapComposer62.skipToGroupEnd();
                                            break;
                                        } else {
                                            navEntry22.Content(gapComposer62, 0);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer7 = (GapComposer) composer42;
                                        if (!gapComposer7.shouldExecute(intValue42 & 1, (intValue42 & 3) != 2)) {
                                            gapComposer7.skipToGroupEnd();
                                            break;
                                        } else {
                                            navEntry22.Content(gapComposer7, 0);
                                            break;
                                        }
                                }
                                return unit2;
                            }
                        }, gapComposer6), gapComposer6, 54);
                        gapComposer6.end(false);
                        gapComposer6.end(false);
                        break;
                    }
                } else {
                    gapComposer6.skipToGroupEnd();
                    break;
                }
            case 7:
                ((RxAwaitKt$$ExternalSyntheticLambda0) obj4).invoke((Throwable) obj);
                break;
            case 8:
                MutexImpl mutexImpl = (MutexImpl) obj4;
                MutexImpl.owner$volatile$FU.set(mutexImpl, null);
                mutexImpl.unlock(null);
                break;
            case 9:
                ((SemaphoreAndMutexImpl) obj4).release();
                break;
            case 10:
                Link link = (Link) obj4;
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    TextKt.m164TextNvy7gAk(link.action, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer7, 0, 262142);
                    break;
                } else {
                    gapComposer7.skipToGroupEnd();
                    break;
                }
            case 11:
                ArrayList arrayList = (ArrayList) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue8 & 6) == 0) {
                    intValue8 |= ((GapComposer) composer8).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 19) != 18)) {
                    Modifier m100paddingqDBjuR0$default = SpacerKt.m100paddingqDBjuR0$default(SizeKt.FillWholeMaxSize, 0.0f, paddingValues.mo86calculateTopPaddingD9Ej5fM(), 0.0f, 13);
                    WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                    InsetsPaddingValues insetsPaddingValues = new InsetsPaddingValues(FlowRowOverflow.current(gapComposer8).navigationBars, (Density) gapComposer8.consume(CompositionLocalsKt.LocalDensity));
                    boolean changedInstance2 = gapComposer8.changedInstance(arrayList);
                    Object rememberedValue5 = gapComposer8.rememberedValue();
                    if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new PagerMeasureKt$$ExternalSyntheticLambda1(r10, arrayList);
                        gapComposer8.updateRememberedValue(rememberedValue5);
                    }
                    SQLite.LazyColumn(0, 506, null, null, null, insetsPaddingValues, null, gapComposer8, null, m100paddingqDBjuR0$default, (Function1) rememberedValue5, false);
                    break;
                } else {
                    gapComposer8.skipToGroupEnd();
                    break;
                }
            default:
                Function0 function0 = (Function0) obj4;
                Composer composer9 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    BadgeKt.IconButton(1572864, null, gapComposer9, SettingsHomeScreenKt.f15lambda$1607639693, null, null, function0, false);
                    break;
                } else {
                    gapComposer9.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ TabKt$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
