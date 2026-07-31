package net.newpipe.app.composable;

import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.TabKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import net.newpipe.app.model.License;
import net.newpipe.app.screen.about.AboutPageKt;
import net.newpipe.app.screen.about.navigation.Page;
import okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PreferenceRowKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 3;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ PreferenceRowKt$$ExternalSyntheticLambda2(Modifier modifier, License license, Function1 function1, Function0 function0, int i) {
        this.f$1 = modifier;
        this.f$0 = license;
        this.f$2 = function1;
        this.f$4 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Object obj4 = this.f$2;
        Object obj5 = this.f$0;
        Object obj6 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                TopAppBarKt.PreferenceRow((String) obj5, (Modifier) obj6, (Painter) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AboutPageKt.AboutScreenContent((List) obj5, (Function0) obj3, (ColorScheme) obj6, (Function3) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                List list = (List) obj5;
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj4;
                ColorScheme colorScheme = (ColorScheme) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    int size = list.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Page page = (Page) list.get(i2);
                        boolean z = defaultPagerState.getCurrentPage() == i2;
                        boolean changedInstance = gapComposer.changedInstance(coroutineScope) | gapComposer.changed(defaultPagerState) | gapComposer.changed(i2);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                            rememberedValue = new Http2Connection$$ExternalSyntheticLambda2(i2, defaultPagerState, coroutineScope);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        TabKt.m161TabwqdebIU(z, (Function0) rememberedValue, null, false, Expect_jvmKt.rememberComposableLambda(-44471865, new TextKt$$ExternalSyntheticLambda2(page, colorScheme, 17), gapComposer), 0L, 0L, gapComposer, 24576);
                        i2++;
                    }
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                AboutPageKt.LicenseDialog((Modifier) obj6, (License) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ PreferenceRowKt$$ExternalSyntheticLambda2(String str, Modifier modifier, Painter painter, Function0 function0, int i) {
        this.f$0 = str;
        this.f$1 = modifier;
        this.f$2 = painter;
        this.f$4 = function0;
    }

    public /* synthetic */ PreferenceRowKt$$ExternalSyntheticLambda2(List list, DefaultPagerState defaultPagerState, CoroutineScope coroutineScope, ColorScheme colorScheme) {
        this.f$0 = list;
        this.f$1 = defaultPagerState;
        this.f$2 = coroutineScope;
        this.f$4 = colorScheme;
    }

    public /* synthetic */ PreferenceRowKt$$ExternalSyntheticLambda2(List list, Function0 function0, ColorScheme colorScheme, Function3 function3, int i) {
        this.f$0 = list;
        this.f$4 = function0;
        this.f$1 = colorScheme;
        this.f$2 = function3;
    }
}
