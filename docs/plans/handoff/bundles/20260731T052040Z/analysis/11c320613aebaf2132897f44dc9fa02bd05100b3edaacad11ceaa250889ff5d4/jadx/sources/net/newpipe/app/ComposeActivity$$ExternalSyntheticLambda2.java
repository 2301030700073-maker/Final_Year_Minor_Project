package net.newpipe.app;

import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.navigationevent.compose.ComposeNavigationEventHandler;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import net.newpipe.app.model.Library;
import net.newpipe.app.model.License;
import net.newpipe.app.screen.about.AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;
import net.newpipe.app.theme.Service;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.logger.EmptyLogger;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposeActivity$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ComposeActivity$$ExternalSyntheticLambda2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, Job job, ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1) {
        this.$r8$classId = 1;
        this.f$0 = contentInViewNode;
        this.f$1 = job;
        this.f$2 = scrollingLogic$nestedScrollScope$1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Function1 function1;
        int i = this.$r8$classId;
        int i2 = 5;
        Unit unit = Unit.INSTANCE;
        int i3 = 0;
        int i4 = 1;
        Object obj2 = this.f$1;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                Service service = (Service) obj3;
                int i5 = ComposeActivity.$r8$clinit;
                ((DisposableEffectScope) obj).getClass();
                Window window = ((ComposeActivity) obj4).getWindow();
                MemoryCacheService memoryCacheService = new MemoryCacheService();
                int i6 = Build.VERSION.SDK_INT;
                if (i6 >= 35) {
                    memoryCacheService.imageLoader = new WindowInsetsControllerCompat$Impl35(window);
                } else if (i6 >= 30) {
                    memoryCacheService.imageLoader = new WindowInsetsControllerCompat$Impl30(window);
                } else if (i6 >= 26) {
                    memoryCacheService.imageLoader = new WindowInsetsControllerCompat$Impl26(window);
                } else {
                    memoryCacheService.imageLoader = new WindowInsetsControllerCompat$Impl23(window);
                }
                memoryCacheService.setAppearanceLightStatusBars(service.isSchemeColorDensityLight());
                break;
            case 1:
                ContentInViewNode contentInViewNode = (ContentInViewNode) obj4;
                Job job = (Job) obj2;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                float floatValue = ((Float) obj).floatValue();
                float f = contentInViewNode.reverseDirection ? 1.0f : -1.0f;
                ScrollingLogic scrollingLogic = contentInViewNode.scrollingLogic;
                long m73reverseIfNeededMKHz9U = scrollingLogic.m73reverseIfNeededMKHz9U(scrollingLogic.m75toOffsettuRUvjQ(f * floatValue));
                ScrollingLogic scrollingLogic2 = scrollingLogic$nestedScrollScope$1.this$0;
                float m74toFloatk4lQ0M = scrollingLogic.m74toFloatk4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(scrollingLogic2.m72performScroll3eAAhYA(scrollingLogic2.outerStateScope, m73reverseIfNeededMKHz9U, 1))) * f;
                if (Math.abs(m74toFloatk4lQ0M) < Math.abs(floatValue)) {
                    CancellationException cancellationException = new CancellationException("Scroll animation cancelled because scroll was not consumed (" + m74toFloatk4lQ0M + " < " + floatValue + ')');
                    cancellationException.initCause(null);
                    job.cancel(cancellationException);
                    break;
                }
                break;
            case 2:
                MutableState mutableState = (MutableState) obj4;
                ArrayList arrayList = (ArrayList) obj2;
                List list = (List) obj3;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.motionFrameOfReferencePlacement = true;
                int size = arrayList.size();
                for (int i7 = 0; i7 < size; i7++) {
                    ((LazyListMeasuredItem) arrayList.get(i7)).place(placementScope);
                }
                int size2 = list.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    ((LazyListMeasuredItem) list.get(i8)).place(placementScope);
                }
                placementScope.motionFrameOfReferencePlacement = false;
                mutableState.getValue();
                break;
            case 3:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                reusableGraphicsLayerScope.setShadowElevation(((Density) obj4).mo63toPx0680j_4(((Dp) ((State) obj3).getValue()).value));
                reusableGraphicsLayerScope.setShape((Shape) obj2);
                reusableGraphicsLayerScope.setClip(false);
                break;
            case 4:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj4;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) obj3;
                MutableScatterMap mutableScatterMap = saveableStateHolderImpl.registries;
                if (mutableScatterMap.contains(obj2)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$1(obj2, " was used multiple times ", "Key ");
                    break;
                } else {
                    saveableStateHolderImpl.savedStates.remove(obj2);
                    mutableScatterMap.set(obj2, saveableStateRegistryWrapper);
                    break;
                }
            case 5:
                NavigationEventState navigationEventState = (NavigationEventState) obj4;
                ComposeNavigationEventHandler composeNavigationEventHandler = (ComposeNavigationEventHandler) obj2;
                Dispatcher dispatcher = (Dispatcher) obj3;
                if (navigationEventState.sourceHandler == null) {
                    navigationEventState.sourceHandler = composeNavigationEventHandler;
                    Dispatcher.addHandler$default(dispatcher, composeNavigationEventHandler);
                    break;
                } else {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("NavigationEventState '", navigationEventState, "' is already registered with a NavigationEventHandler '", composeNavigationEventHandler, "'.");
                    break;
                }
            case 6:
                final List list2 = (List) obj4;
                final MutableState mutableState2 = (MutableState) obj2;
                final MutableState mutableState3 = (MutableState) obj3;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.intervals.addInterval(1, new LazyListInterval(null, new ImageKt$$ExternalSyntheticLambda0(28), new ComposableLambdaImpl(-857469575, true, new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(new ComposableLambdaImpl(-919035098, true, new IndicationKt$$ExternalSyntheticLambda0(mutableState2, mutableState3, 6)), 1))));
                lazyListIntervalContent.intervals.addInterval(list2.size(), new LazyListInterval(new Latch$await$2$2(new ZipFilesKt$$ExternalSyntheticLambda3(6), list2, i2), new AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3(2, list2), new ComposableLambdaImpl(802480018, true, new Function4() { // from class: net.newpipe.app.screen.about.LicensePageKt$LicensePageContent$lambda$9$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i9;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj5;
                        int intValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int intValue2 = ((Number) obj8).intValue();
                        if ((intValue2 & 6) == 0) {
                            i9 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i9 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i9 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i9 & 1, (i9 & Token.EXPR_VOID) != 146)) {
                            final Library library = (Library) list2.get(intValue);
                            gapComposer.startReplaceGroup(159909993);
                            final MutableState mutableState4 = mutableState2;
                            boolean changed = gapComposer.changed(mutableState4) | gapComposer.changedInstance(library);
                            final MutableState mutableState5 = mutableState3;
                            boolean changed2 = changed | gapComposer.changed(mutableState5);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed2 || rememberedValue == Composer.Companion.Empty) {
                                rememberedValue = new Function0() { // from class: net.newpipe.app.screen.about.LicensePageKt$LicensePageContent$4$1$3$1$1
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object invoke() {
                                        Library library2 = Library.this;
                                        mutableState4.setValue(new License(library2.name, (String) CollectionsKt.first(library2.licenses), library2.website));
                                        mutableState5.setValue(Boolean.TRUE);
                                        return Unit.INSTANCE;
                                    }
                                };
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Library.Companion companion = Library.Companion;
                            UStringsKt.LibraryListItem(null, library, (Function0) rememberedValue, gapComposer, 0);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                })));
                break;
            default:
                Context context = (Context) obj4;
                Level level = (Level) obj2;
                ConnectionPool connectionPool = (ConnectionPool) obj3;
                KoinApplication koinApplication = (KoinApplication) obj;
                koinApplication.getClass();
                Koin koin = koinApplication.koin;
                Level level2 = (Level) ((Logger) koin.logger).level;
                Level level3 = Level.INFO;
                if (level2.compareTo(level3) <= 0) {
                    Logger logger = (Logger) koin.logger;
                    logger.getClass();
                    logger.log(level3, "[init] declare Android Context");
                }
                RxAwaitKt$$ExternalSyntheticLambda0 rxAwaitKt$$ExternalSyntheticLambda0 = new RxAwaitKt$$ExternalSyntheticLambda0(context, 10);
                Module module = new Module();
                rxAwaitKt$$ExternalSyntheticLambda0.invoke(module);
                koin.loadModules(Jsoup.listOf(module), true);
                level.getClass();
                EmptyLogger emptyLogger = new EmptyLogger(1);
                emptyLogger.level = level;
                koin.logger = emptyLogger;
                ConnectionPool connectionPool2 = new ConnectionPool[]{connectionPool}[0];
                if (connectionPool2 != null && (function1 = (Function1) connectionPool2.delegate) != null) {
                    function1.invoke(koinApplication);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ ComposeActivity$$ExternalSyntheticLambda2(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ ComposeActivity$$ExternalSyntheticLambda2(MutableState mutableState, ArrayList arrayList, List list, boolean z) {
        this.$r8$classId = 2;
        this.f$0 = mutableState;
        this.f$1 = arrayList;
        this.f$2 = list;
    }
}
