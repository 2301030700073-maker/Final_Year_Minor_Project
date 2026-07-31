package org.wikipedia.readinglist.database;

import android.content.Context;
import androidx.room.Room;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.SynchronizedLazyImpl;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingList implements Serializable {
    public final transient SynchronizedLazyImpl accentInvariantTitle$delegate;
    public long atime;
    public String description;
    public boolean dirty;
    public long id;
    public String listTitle;
    public long mtime;
    public final ArrayList pages;
    public long remoteId;
    public transient boolean selected;
    public final long sizeBytes;

    public ReadingList(String str, String str2, long j, long j2, long j3, long j4, boolean z, long j5) {
        str.getClass();
        this.listTitle = str;
        this.description = str2;
        this.mtime = j;
        this.atime = j2;
        this.id = j3;
        this.sizeBytes = j4;
        this.dirty = z;
        this.remoteId = j5;
        this.pages = new ArrayList();
        this.accentInvariantTitle$delegate = new SynchronizedLazyImpl(new WikiGames$$ExternalSyntheticLambda0(21, this));
    }

    public final String getAccentInvariantTitle() {
        Object value = this.accentInvariantTitle$delegate.getValue();
        value.getClass();
        return (String) value;
    }

    public final int getNumPagesOffline() {
        int i = 0;
        ArrayList arrayList = this.pages;
        if (arrayList != null && arrayList.isEmpty()) {
            return 0;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ReadingListPage readingListPage = (ReadingListPage) it.next();
            if (readingListPage.offline && readingListPage.status == 1 && (i = i + 1) < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final String getTitle() {
        String str = this.listTitle;
        if (str.length() != 0) {
            return str;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Context context = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
        if (context == null) {
            context = Jsoup.getInstance();
        }
        String string = context.getString(R.string.default_reading_list_name);
        string.getClass();
        return string;
    }

    public final boolean isDefault() {
        String title = getTitle();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Context context = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
        if (context == null) {
            context = Jsoup.getInstance();
        }
        String string = context.getString(R.string.default_reading_list_name);
        string.getClass();
        return title.equals(string);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ReadingList(java.lang.String r15, java.lang.String r16) {
        /*
            r14 = this;
            long r3 = java.lang.System.currentTimeMillis()
            r11 = 1
            r12 = 0
            r7 = 0
            r9 = 0
            r5 = r3
            r0 = r14
            r1 = r15
            r2 = r16
            r0.<init>(r1, r2, r3, r5, r7, r9, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.database.ReadingList.<init>(java.lang.String, java.lang.String):void");
    }
}
