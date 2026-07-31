package net.newpipe.app.screen.about;

import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.newpipe.app.model.Link;
import okhttp3.internal.http2.Http2Connection;
import okio.Okio;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.koin.core.KoinApplication;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutPageKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ AboutPageKt$$ExternalSyntheticLambda3(List list, Function1 function1) {
        this.f$0 = list;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final List list = this.f$0;
        final Function1 function1 = this.f$1;
        switch (i) {
            case 0:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.intervals.addInterval(1, new LazyListInterval(null, new ImageKt$$ExternalSyntheticLambda0(28), new ComposableLambdaImpl(-857469575, true, new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(AboutPageKt.lambda$776903718, 1))));
                lazyListIntervalContent.intervals.addInterval(list.size(), new LazyListInterval(new Latch$await$2$2(new ZipFilesKt$$ExternalSyntheticLambda3(4), list, 4), new AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3(0, list), new ComposableLambdaImpl(802480018, true, new Function4() { // from class: net.newpipe.app.screen.about.AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i2;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                        int intValue = ((Number) obj3).intValue();
                        Composer composer = (Composer) obj4;
                        int intValue2 = ((Number) obj5).intValue();
                        if ((intValue2 & 6) == 0) {
                            i2 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i2 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
                            Link link = (Link) list.get(intValue);
                            gapComposer.startReplaceGroup(917119174);
                            Function1 function12 = function1;
                            boolean changed = gapComposer.changed(function12) | gapComposer.changedInstance(link);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == Composer.Companion.Empty) {
                                rememberedValue = new Http2Connection.ReaderRunnable(function12, link);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Okio.LinkListItem(null, link, (Function0) rememberedValue, gapComposer, 0);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                })));
                break;
            default:
                KoinApplication koinApplication = (KoinApplication) obj;
                koinApplication.getClass();
                Function1 function12 = new Function1[]{function1}[0];
                if (function12 != null) {
                    function12.invoke(koinApplication);
                }
                koinApplication.modules(list);
                break;
        }
        return unit;
    }

    public /* synthetic */ AboutPageKt$$ExternalSyntheticLambda3(Function1 function1, List list) {
        this.f$1 = function1;
        this.f$0 = list;
    }
}
