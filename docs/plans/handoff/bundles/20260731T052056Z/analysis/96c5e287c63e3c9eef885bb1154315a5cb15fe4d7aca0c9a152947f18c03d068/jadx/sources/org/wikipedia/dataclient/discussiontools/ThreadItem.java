package org.wikipedia.dataclient.discussiontools;

import android.os.Parcel;
import android.os.Parcelable;
import coil3.util.ContextsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.io.LinesSequence;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ThreadItem implements Parcelable {
    public final String author;
    public final Date date;
    public final int headingLevel;
    public final String html;
    public final String id;
    public boolean isExpanded;
    public boolean isFirstTopLevel;
    public boolean isLastSibling;
    public final int level;
    public final String name;
    public final String othercontent;
    public final boolean placeholderHeading;
    public final String plainOtherContent;
    public final String plainText;
    public final List replies;
    public boolean seen;
    public final String timestamp;
    public final String type;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<ThreadItem> CREATOR = new DefaultStyle.AnonymousClass1(17);
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(7)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ThreadItem$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ThreadItem(int i, String str, int i2, String str2, String str3, String str4, String str5, String str6, int i3, boolean z, List list, String str7) {
        if ((i & 1) == 0) {
            this.type = "";
        } else {
            this.type = str;
        }
        if ((i & 2) == 0) {
            this.level = 0;
        } else {
            this.level = i2;
        }
        if ((i & 4) == 0) {
            this.id = "";
        } else {
            this.id = str2;
        }
        if ((i & 8) == 0) {
            this.name = "";
        } else {
            this.name = str3;
        }
        if ((i & 16) == 0) {
            this.html = "";
            str4 = "";
        } else {
            this.html = str4;
        }
        if ((i & 32) == 0) {
            this.author = "";
        } else {
            this.author = str5;
        }
        if ((i & 64) == 0) {
            this.timestamp = "";
            str6 = "";
        } else {
            this.timestamp = str6;
        }
        if ((i & 128) == 0) {
            this.headingLevel = 0;
        } else {
            this.headingLevel = i3;
        }
        if ((i & 256) == 0) {
            this.placeholderHeading = false;
        } else {
            this.placeholderHeading = z;
        }
        if ((i & 512) == 0) {
            this.replies = EmptyList.INSTANCE;
        } else {
            this.replies = list;
        }
        if ((i & 1024) == 0) {
            this.othercontent = "";
            str7 = "";
        } else {
            this.othercontent = str7;
        }
        this.isExpanded = true;
        this.isFirstTopLevel = false;
        this.isLastSibling = false;
        this.seen = false;
        StringUtil stringUtil = StringUtil.INSTANCE;
        this.plainText = StringUtil.fromHtml(StringUtil.removeStyleTags(str4)).toString();
        this.plainOtherContent = StringUtil.fromHtml(StringUtil.removeStyleTags(str7)).toString();
        Date date = null;
        try {
            if (str6.length() != 0) {
                if (StringsKt.contains(str6, "T", false)) {
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    date = DateUtil.iso8601DateParse(str6);
                } else {
                    ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                    date = DateUtil.dbDateParse(str6);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.date = date;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final LinesSequence getAllReplies() {
        return new LinesSequence(3, new ThreadItem$allReplies$1(this, null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.type);
        parcel.writeInt(this.level);
        parcel.writeString(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.html);
        parcel.writeString(this.author);
        parcel.writeString(this.timestamp);
        parcel.writeInt(this.headingLevel);
        parcel.writeInt(this.placeholderHeading ? 1 : 0);
        List list = this.replies;
        parcel.writeInt(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ThreadItem) it.next()).writeToParcel(parcel, i);
        }
        parcel.writeString(this.othercontent);
    }

    public ThreadItem(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, boolean z, ArrayList arrayList, String str7) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        this.type = str;
        this.level = i;
        this.id = str2;
        this.name = str3;
        this.html = str4;
        this.author = str5;
        this.timestamp = str6;
        this.headingLevel = i2;
        this.placeholderHeading = z;
        this.replies = arrayList;
        this.othercontent = str7;
        this.isExpanded = true;
        StringUtil stringUtil = StringUtil.INSTANCE;
        this.plainText = StringUtil.fromHtml(StringUtil.removeStyleTags(str4)).toString();
        this.plainOtherContent = StringUtil.fromHtml(StringUtil.removeStyleTags(str7)).toString();
        Date date = null;
        try {
            if (str6.length() != 0) {
                if (StringsKt.contains(str6, "T", false)) {
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    date = DateUtil.iso8601DateParse(str6);
                } else {
                    ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                    date = DateUtil.dbDateParse(str6);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.date = date;
    }
}
