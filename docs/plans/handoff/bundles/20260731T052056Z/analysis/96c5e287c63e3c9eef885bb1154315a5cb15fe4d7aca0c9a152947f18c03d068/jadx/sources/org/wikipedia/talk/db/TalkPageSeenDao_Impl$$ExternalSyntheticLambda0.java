package org.wikipedia.talk.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkPageSeenDao_Impl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ ArrayList f$1;

    public /* synthetic */ TalkPageSeenDao_Impl$$ExternalSyntheticLambda0(String str, ArrayList arrayList, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = arrayList;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 1;
        ArrayList arrayList = this.f$1;
        String str = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare(str);
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        prepare.bindText(i2, (String) it.next());
                        i2++;
                    }
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "sha");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(new TalkPageSeen(prepare.getText(columnIndexOrThrow)));
                    }
                    prepare.close();
                    return arrayList2;
                } catch (Throwable th) {
                    prepare.close();
                    throw th;
                }
            default:
                sQLiteConnection.getClass();
                SQLiteStatement prepare2 = sQLiteConnection.prepare(str);
                try {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        prepare2.bindLong(((Number) it2.next()).intValue(), i2);
                        i2++;
                    }
                    prepare2.step();
                    prepare2.close();
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    prepare2.close();
                    throw th2;
                }
        }
    }
}
