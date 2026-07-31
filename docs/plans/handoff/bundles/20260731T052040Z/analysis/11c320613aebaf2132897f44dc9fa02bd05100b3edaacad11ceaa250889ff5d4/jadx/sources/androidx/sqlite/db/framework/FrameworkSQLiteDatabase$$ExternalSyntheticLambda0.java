package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import android.graphics.Typeface;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.sqlite.db.SupportSQLiteQuery;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import org.acra.util.ProcessFinisher;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
                sQLiteQuery.getClass();
                ((SupportSQLiteQuery) obj5).bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor((SQLiteCursorDriver) obj2, (String) obj3, sQLiteQuery);
            case 1:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                ((Integer) obj2).getClass();
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & Token.DO) != 130)) {
                    composableLambdaImpl.invoke(lazyItemScopeImpl, gapComposer, Integer.valueOf(intValue & 14));
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            default:
                AndroidParagraphIntrinsics androidParagraphIntrinsics = (AndroidParagraphIntrinsics) obj5;
                TypefaceResult$Immutable m412resolveDPcqOEQ = ((FontFamilyResolverImpl) androidParagraphIntrinsics.fontFamilyResolver).m412resolveDPcqOEQ((SystemFontFamily) obj, (FontWeight) obj2, ((FontStyle) obj3).value, ((FontSynthesis) obj4).value);
                if (m412resolveDPcqOEQ instanceof TypefaceResult$Immutable) {
                    Object obj6 = m412resolveDPcqOEQ.value;
                    obj6.getClass();
                    return (Typeface) obj6;
                }
                ProcessFinisher processFinisher = new ProcessFinisher(m412resolveDPcqOEQ, androidParagraphIntrinsics.resolvedTypefaces);
                androidParagraphIntrinsics.resolvedTypefaces = processFinisher;
                Object obj7 = processFinisher.lastActivityManager;
                obj7.getClass();
                return (Typeface) obj7;
        }
    }
}
