package androidx.compose.ui.text;

import android.graphics.Path;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MultiParagraph$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda1(int i, int i2, ReadingListPageDao_Impl readingListPageDao_Impl) {
        this.f$1 = i;
        this.f$2 = i2;
        this.f$0 = readingListPageDao_Impl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement sQLiteStatement;
        ReadingListPageDao_Impl readingListPageDao_Impl;
        Integer valueOf;
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        int i2 = this.f$2;
        int i3 = this.f$1;
        switch (i) {
            case 0:
                AndroidPath androidPath = (AndroidPath) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                int localIndex = paragraphInfo.toLocalIndex(i3);
                int localIndex2 = paragraphInfo.toLocalIndex(i2);
                CharSequence charSequence = androidParagraph.charSequence;
                if (localIndex < 0 || localIndex > localIndex2 || localIndex2 > charSequence.length()) {
                    StringBuilder m = Animation.CC.m(localIndex, localIndex2, "start(", ") or end(", ") is out of range [0..");
                    m.append(charSequence.length());
                    m.append("], or start > end!");
                    InlineClassHelperKt.throwIllegalArgumentException(m.toString());
                }
                Path path = new Path();
                TextLayout textLayout = androidParagraph.layout;
                textLayout.layout.getSelectionPath(localIndex, localIndex2, path);
                int i4 = textLayout.topPadding;
                if (i4 != 0 && !path.isEmpty()) {
                    path.offset(RecyclerView.DECELERATION_RATE, i4);
                }
                AndroidPath androidPath2 = new AndroidPath(path);
                androidPath2.m418translatek4lQ0M((Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(paragraphInfo.top) & 4294967295L));
                Modifier.CC.m341addPathUv8p0NA$default(androidPath, androidPath2);
                return Unit.INSTANCE;
            default:
                ReadingListPageDao_Impl readingListPageDao_Impl2 = (ReadingListPageDao_Impl) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM ReadingListPage WHERE atime > 0 ORDER BY atime DESC LIMIT ? OFFSET ?");
                try {
                    prepare.bindLong(i3, 1);
                    prepare.bindLong(i2, 2);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.isNull(columnIndexOrThrow) ? null : prepare.getText(columnIndexOrThrow);
                        int i5 = columnIndexOrThrow;
                        LoginClient loginClient = readingListPageDao_Impl2.__wikiSiteTypeConverter;
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(text);
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow2)) {
                            readingListPageDao_Impl = readingListPageDao_Impl2;
                            valueOf = null;
                        } else {
                            readingListPageDao_Impl = readingListPageDao_Impl2;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow2));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        int i6 = columnIndexOrThrow14;
                        int i7 = columnIndexOrThrow15;
                        columnIndexOrThrow14 = i6;
                        int i8 = columnIndexOrThrow16;
                        sQLiteStatement = prepare;
                        try {
                            arrayList.add(new ReadingListPage(stringToWikiSite, intToNamespace, prepare.getText(columnIndexOrThrow3), prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6), prepare.getLong(columnIndexOrThrow7), prepare.getLong(columnIndexOrThrow8), prepare.getLong(columnIndexOrThrow9), prepare.getLong(columnIndexOrThrow10), ((int) prepare.getLong(columnIndexOrThrow11)) != 0, prepare.getLong(columnIndexOrThrow12), prepare.getLong(columnIndexOrThrow13), prepare.getText(i6), prepare.getLong(i7), prepare.getLong(i8)));
                            columnIndexOrThrow16 = i8;
                            prepare = sQLiteStatement;
                            readingListPageDao_Impl2 = readingListPageDao_Impl;
                            columnIndexOrThrow15 = i7;
                            columnIndexOrThrow = i5;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteStatement.close();
                            throw th;
                        }
                    }
                    prepare.close();
                    return arrayList;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = prepare;
                }
        }
    }

    public /* synthetic */ MultiParagraph$$ExternalSyntheticLambda1(AndroidPath androidPath, int i, int i2) {
        this.f$0 = androidPath;
        this.f$1 = i;
        this.f$2 = i2;
    }
}
