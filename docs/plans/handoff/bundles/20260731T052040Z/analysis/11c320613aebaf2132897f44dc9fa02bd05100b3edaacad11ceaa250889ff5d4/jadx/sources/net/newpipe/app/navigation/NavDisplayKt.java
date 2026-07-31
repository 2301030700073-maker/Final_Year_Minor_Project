package net.newpipe.app.navigation;

import android.os.Bundle;
import androidx.cardview.widget.CardView;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecorator;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavEntryDecorator;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecorator;
import androidx.savedstate.serialization.SavedStateConfiguration;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.ObjectSerializer;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.screen.about.AboutPageKt;
import net.newpipe.app.screen.settings.SettingsHomeScreenKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.koin.compose.ComposeContextWrapper;
import org.koin.compose.KoinApplicationKt;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NavDisplayKt {

    /* renamed from: lambda$-1159499601, reason: not valid java name */
    public static final ComposableLambdaImpl f11lambda$1159499601;

    /* renamed from: lambda$-1962361402, reason: not valid java name */
    public static final ComposableLambdaImpl f12lambda$1962361402;

    static {
        final int i = 0;
        f11lambda$1159499601 = new ComposableLambdaImpl(-1159499601, false, new Function4() { // from class: net.newpipe.app.navigation.ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                Scope scope = (Scope) obj;
                switch (i2) {
                    case 0:
                        ((Integer) obj4).getClass();
                        scope.getClass();
                        ((Destination.About) obj2).getClass();
                        AboutPageKt.AboutScreen(null, (Composer) obj3, 0);
                        break;
                    default:
                        ((Integer) obj4).getClass();
                        scope.getClass();
                        ((Destination.Settings) obj2).getClass();
                        SettingsHomeScreenKt.SettingsHomeScreen(null, null, (Composer) obj3, 0);
                        break;
                }
                return unit;
            }
        });
        final int i2 = 1;
        f12lambda$1962361402 = new ComposableLambdaImpl(-1962361402, false, new Function4() { // from class: net.newpipe.app.navigation.ComposableSingletons$NavModuleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                Scope scope = (Scope) obj;
                switch (i22) {
                    case 0:
                        ((Integer) obj4).getClass();
                        scope.getClass();
                        ((Destination.About) obj2).getClass();
                        AboutPageKt.AboutScreen(null, (Composer) obj3, 0);
                        break;
                    default:
                        ((Integer) obj4).getClass();
                        scope.getClass();
                        ((Destination.Settings) obj2).getClass();
                        SettingsHomeScreenKt.SettingsHomeScreen(null, null, (Composer) obj3, 0);
                        break;
                }
                return unit;
            }
        });
    }

    public static final void NavDisplay(Destination destination, Function0 function0, Navigator navigator, Composer composer, int i) {
        Navigator navigator2;
        Navigator navigator3;
        char c;
        destination.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1803108841);
        int i2 = 4;
        int i3 = i | (gapComposer.changed(destination) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 128;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            gapComposer.startDefaults();
            int i4 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i4 == 0 || gapComposer.getDefaultsInvalid()) {
                boolean z = ((i3 & Token.ASSIGN_MOD) == 32) | ((i3 & 14) == 4);
                Object rememberedValue = gapComposer.rememberedValue();
                if (z || rememberedValue == obj) {
                    rememberedValue = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(destination, function0, 18);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                ParametersHolder parametersHolder = (ParametersHolder) ((Function0) rememberedValue).invoke();
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope) | gapComposer.changed(parametersHolder);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    rememberedValue2 = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(Navigator.class), parametersHolder);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                navigator3 = (Navigator) rememberedValue2;
            } else {
                gapComposer.skipToGroupEnd();
                navigator3 = navigator;
            }
            gapComposer.endDefaults();
            Object[] objArr = new Object[0];
            ObjectSerializer objectSerializer = new ObjectSerializer(Destination.Companion.serializer());
            boolean changedInstance = gapComposer.changedInstance(navigator3);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new NavDisplayKt$$ExternalSyntheticLambda1(navigator3, 0);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            SavedStateConfiguration savedStateConfiguration = SavedStateConfiguration.DEFAULT;
            SnapshotStateList snapshotStateList = (SnapshotStateList) SaverKt.rememberSaveable(Arrays.copyOf(objArr, 0), new CardView.AnonymousClass1(13, new TextKt$$ExternalSyntheticLambda2(objectSerializer, savedStateConfiguration, 14), new Recomposer$$ExternalSyntheticLambda4(objectSerializer, savedStateConfiguration, 26), false), (Function0) rememberedValue3, gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
            boolean changedInstance2 = gapComposer.changedInstance(navigator3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new NavDisplayKt$$ExternalSyntheticLambda1(navigator3, 1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function02 = (Function0) rememberedValue4;
            Object rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer);
            boolean changed2 = gapComposer.changed(rememberSaveableStateHolder);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue5 == obj) {
                rememberedValue5 = new SaveableStateHolderNavEntryDecorator(new DiskLruCache$$ExternalSyntheticLambda0(rememberSaveableStateHolder, 22), new ComposableLambdaImpl(-1320822745, true, new TabKt$$ExternalSyntheticLambda1(rememberSaveableStateHolder, i2)));
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            SaveableStateHolderNavEntryDecorator saveableStateHolderNavEntryDecorator = (SaveableStateHolderNavEntryDecorator) rememberedValue5;
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.consume(LocalViewModelStoreOwner.LocalViewModelStoreOwner);
            if (viewModelStoreOwner == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(viewModelStoreOwner);
            ViewModelProvider$Factory viewModelProviderFactory = ViewModelKt.getViewModelProviderFactory(viewModelStoreOwner);
            Long valueOf = Long.valueOf(gapComposer.compositeKeyHashCode);
            boolean changed3 = gapComposer.changed(viewModelStoreOwner) | gapComposer.changed(valueOf);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue6 == obj) {
                Object viewModelStoreProvider = new ViewModelStoreProvider(viewModelStoreOwner, valueOf, bundleOf, viewModelCreationExtras, viewModelProviderFactory);
                gapComposer.updateRememberedValue(viewModelStoreProvider);
                rememberedValue6 = viewModelStoreProvider;
            }
            Object obj2 = (ViewModelStoreProvider) rememberedValue6;
            Object lifecycle = ((LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner)).getLifecycle();
            boolean changedInstance3 = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(lifecycle);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue7 == obj) {
                rememberedValue7 = new Recomposer$$ExternalSyntheticLambda4(obj2, lifecycle, 29);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Updater.DisposableEffect(obj2, lifecycle, (Function1) rememberedValue7, gapComposer);
            boolean changed4 = gapComposer.changed(obj2);
            Object rememberedValue8 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue8 == obj) {
                c = 1;
                rememberedValue8 = new ViewModelStoreNavEntryDecorator(new DiskLruCache$$ExternalSyntheticLambda0(obj2, 20), new ComposableLambdaImpl(-1481256515, true, new TabKt$$ExternalSyntheticLambda1(obj2, 3)));
                gapComposer.updateRememberedValue(rememberedValue8);
            } else {
                c = 1;
            }
            NavEntryDecorator[] navEntryDecoratorArr = new NavEntryDecorator[2];
            navEntryDecoratorArr[0] = saveableStateHolderNavEntryDecorator;
            navEntryDecoratorArr[c] = (ViewModelStoreNavEntryDecorator) rememberedValue8;
            List listOf = Jsoup.listOf((Object[]) navEntryDecoratorArr);
            ComposeContextWrapper composeContextWrapper = (ComposeContextWrapper) gapComposer.consume(KoinApplicationKt.LocalKoinScopeContext);
            if (composeContextWrapper._value == null) {
                Function0 function03 = composeContextWrapper.setValue;
                composeContextWrapper._value = function03 != null ? function03.invoke() : null;
            }
            Object obj3 = composeContextWrapper._value;
            if (obj3 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can't retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication.");
                return;
            }
            ArrayList all = ((Scope) obj3).getAll(Reflection.getOrCreateKotlinClass(Function1.class));
            EntryProviderScope entryProviderScope = new EntryProviderScope();
            Iterator it = all.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(entryProviderScope);
            }
            Jsoup.NavDisplay(snapshotStateList, null, null, function02, listOf, null, null, null, null, null, new DiskLruCache$$ExternalSyntheticLambda0(entryProviderScope, 21), gapComposer, 0);
            navigator2 = navigator3;
        } else {
            gapComposer.skipToGroupEnd();
            navigator2 = navigator;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new KoinApplicationKt$$ExternalSyntheticLambda2(destination, function0, navigator2, i, 6);
        }
    }
}
