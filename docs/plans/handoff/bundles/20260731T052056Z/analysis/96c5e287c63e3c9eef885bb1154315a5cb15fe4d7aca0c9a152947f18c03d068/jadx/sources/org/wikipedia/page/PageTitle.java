package org.wikipedia.page;

import android.location.Location;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.gallery.MediaListItem;
import org.wikipedia.gallery.TextInfo;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.Namespace;
import org.wikipedia.pageimages.db.PageImage;
import org.wikipedia.staticdata.ContributionsNameData;
import org.wikipedia.staticdata.FileAliasData;
import org.wikipedia.staticdata.MainPageNameData;
import org.wikipedia.staticdata.SpecialAliasData;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class PageTitle implements Parcelable {
    public String _displayText;
    public String _namespace;
    public String _text;
    public String description;
    public String extract;
    public String fragment;
    public String thumbUrl;
    public WikiSite wikiSite;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<PageTitle> CREATOR = new Creator(0);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static PageTitle titleForInternalLink(String str, WikiSite wikiSite) {
            wikiSite.getClass();
            if (str == null) {
                str = "";
            }
            Pattern compile = Pattern.compile("/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/");
            compile.getClass();
            String replaceFirst = compile.matcher(str).replaceFirst("");
            replaceFirst.getClass();
            return new PageTitle(replaceFirst, wikiSite, (String) null);
        }

        public static PageTitle titleForUri(Uri uri, WikiSite wikiSite) {
            wikiSite.getClass();
            String path = uri.getPath();
            String fragment = uri.getFragment();
            if (fragment != null && fragment.length() != 0) {
                path = path + "#" + uri.getFragment();
            }
            return titleForInternalLink(path, wikiSite);
        }

        public final KSerializer serializer() {
            return PageTitle$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Creator implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Creator(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            switch (this.$r8$classId) {
                case 0:
                    parcel.getClass();
                    return new PageTitle(parcel.readString(), WikiSite.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                case 1:
                    parcel.getClass();
                    return new ExtMetadata.Values(parcel.readString(), parcel.readString(), parcel.readString());
                case 2:
                    parcel.getClass();
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    TextInfo textInfo = (TextInfo) parcel.readParcelable(MediaListItem.class.getClassLoader());
                    boolean z = parcel.readInt() != 0;
                    int readInt = parcel.readInt();
                    int readInt2 = parcel.readInt();
                    ArrayList arrayList = new ArrayList(readInt2);
                    for (int i = 0; i != readInt2; i++) {
                        arrayList.add(MediaListItem.ImageSrcSet.CREATOR.createFromParcel(parcel));
                    }
                    return new MediaListItem(readString, readString2, textInfo, z, readInt, arrayList);
                case 3:
                    parcel.getClass();
                    return new MediaListItem.ImageSrcSet(parcel.readString(), parcel.readString());
                case 4:
                    parcel.getClass();
                    return new TextInfo(parcel.readString(), parcel.readString(), parcel.readString());
                case 5:
                    parcel.getClass();
                    return new HistoryEntry(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), new Date(parcel.readLong()), parcel.readInt(), parcel.readLong());
                case 6:
                    parcel.getClass();
                    return new PageProperties(parcel.readInt(), Namespace.valueOf(parcel.readString()), parcel.readLong(), new Date(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), (Location) parcel.readParcelable(PageProperties.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                case 7:
                    parcel.getClass();
                    return new PageImage(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readDouble(), parcel.readDouble());
                default:
                    parcel.getClass();
                    return new TalkTemplate(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new PageTitle[i];
                case 1:
                    return new ExtMetadata.Values[i];
                case 2:
                    return new MediaListItem[i];
                case 3:
                    return new MediaListItem.ImageSrcSet[i];
                case 4:
                    return new TextInfo[i];
                case 5:
                    return new HistoryEntry[i];
                case 6:
                    return new PageProperties[i];
                case 7:
                    return new PageImage[i];
                default:
                    return new TalkTemplate[i];
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageTitle(String str, WikiSite wikiSite, String str2) {
        this(null, wikiSite, str == null ? "" : str, null, str2, null, null, null);
        List list;
        List list2;
        String str3;
        List list3;
        List list4;
        List list5;
        wikiSite.getClass();
        String str4 = str == null ? "" : str;
        str4 = str4.length() == 0 ? MainPageNameData.valueFor(wikiSite.languageCode) : str4;
        Pattern compile = Pattern.compile("#");
        compile.getClass();
        Matcher matcher = compile.matcher(str4);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            int i = 0;
            do {
                arrayList.add(str4.subSequence(i, matcher.start()).toString());
                i = matcher.end();
            } while (matcher.find());
            arrayList.add(str4.subSequence(i, str4.length()).toString());
            list = arrayList;
        } else {
            list = Room.listOf(str4.toString());
        }
        boolean isEmpty = list.isEmpty();
        List list6 = EmptyList.INSTANCE;
        if (!isEmpty) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    list2 = CollectionsKt.take(list, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list2 = list6;
        String[] strArr = (String[]) list2.toArray(new String[0]);
        String str5 = (String) ArraysKt___ArraysKt.firstOrNull(strArr);
        String str6 = str5 == null ? "" : str5;
        if (strArr.length > 1) {
            StringUtil stringUtil = StringUtil.INSTANCE;
            String str7 = strArr[1];
            str7.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(str7, "+", "%2B"), "UTF-8");
                decode.getClass();
                str7 = decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                throw null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(str7));
            }
            str3 = StringsKt__StringsJVMKt.replace$default(str7, " ", "_");
        } else {
            str3 = null;
        }
        this.fragment = str3;
        Pattern compile2 = Pattern.compile("\\?");
        compile2.getClass();
        Matcher matcher2 = compile2.matcher(str6);
        if (matcher2.find()) {
            ArrayList arrayList2 = new ArrayList(10);
            int i2 = 0;
            do {
                arrayList2.add(str6.subSequence(i2, matcher2.start()).toString());
                i2 = matcher2.end();
            } while (matcher2.find());
            arrayList2.add(str6.subSequence(i2, str6.length()).toString());
            list3 = arrayList2;
        } else {
            list3 = Room.listOf(str6.toString());
        }
        if (!list3.isEmpty()) {
            ListIterator listIterator2 = list3.listIterator(list3.size());
            while (listIterator2.hasPrevious()) {
                if (((String) listIterator2.previous()).length() != 0) {
                    list4 = CollectionsKt.take(list3, listIterator2.nextIndex() + 1);
                    break;
                }
            }
        }
        list4 = list6;
        String[] strArr2 = (String[]) list4.toArray(new String[0]);
        if (strArr2.length > 1 && StringsKt.contains(strArr2[1], "=", false)) {
            str6 = strArr2[0];
        }
        String str8 = str6;
        Pattern compile3 = Pattern.compile(":");
        compile3.getClass();
        str8.getClass();
        Matcher matcher3 = compile3.matcher(str8);
        if (matcher3.find()) {
            ArrayList arrayList3 = new ArrayList(10);
            int i3 = 0;
            do {
                arrayList3.add(str8.subSequence(i3, matcher3.start()).toString());
                i3 = matcher3.end();
            } while (matcher3.find());
            arrayList3.add(str8.subSequence(i3, str8.length()).toString());
            list5 = arrayList3;
        } else {
            list5 = Room.listOf(str8.toString());
        }
        if (!list5.isEmpty()) {
            ListIterator listIterator3 = list5.listIterator(list5.size());
            while (true) {
                if (!listIterator3.hasPrevious()) {
                    break;
                } else if (((String) listIterator3.previous()).length() != 0) {
                    list6 = CollectionsKt.take(list5, listIterator3.nextIndex() + 1);
                    break;
                }
            }
        }
        String[] strArr3 = (String[]) list6.toArray(new String[0]);
        if (strArr3.length > 1) {
            String str9 = strArr3[0];
            String[] iSOLanguages = Locale.getISOLanguages();
            iSOLanguages.getClass();
            if (ArraysKt___ArraysKt.contains(str9, iSOLanguages)) {
                this._namespace = null;
                WikiSite.Companion companion = WikiSite.Companion;
                String authority = wikiSite.authority();
                companion.getClass();
                String authorityToLanguageCode = WikiSite.Companion.authorityToLanguageCode(authority);
                int length = authorityToLanguageCode.length();
                String authority2 = wikiSite.authority();
                if (length > 0) {
                    authority2 = StringsKt__StringsJVMKt.replace$default(authority2, authorityToLanguageCode.concat("."), str9 + ".");
                }
                this.wikiSite = new WikiSite(authority2, str9);
                this._text = ArraysKt___ArraysKt.joinToString$default(ArraysKt___ArraysKt.copyOfRange(strArr3, 1, strArr3.length), ":", null, null, null, 62);
            } else if (strArr3[1].length() <= 0 || Character.isWhitespace(strArr3[1].charAt(0)) || strArr3[1].charAt(0) == '_') {
                this.wikiSite = wikiSite;
                this._namespace = null;
                this._text = str8;
            } else {
                this.wikiSite = wikiSite;
                this._namespace = str9;
                this._text = ArraysKt___ArraysKt.joinToString$default(ArraysKt___ArraysKt.copyOfRange(strArr3, 1, strArr3.length), ":", null, null, null, 62);
            }
        } else {
            this.wikiSite = wikiSite;
            this._namespace = null;
            this._text = str8;
        }
        this.thumbUrl = str2;
    }

    public static PageTitle copy$default(PageTitle pageTitle) {
        String str = pageTitle._namespace;
        WikiSite wikiSite = pageTitle.wikiSite;
        String str2 = pageTitle._text;
        String str3 = pageTitle.fragment;
        String str4 = pageTitle.thumbUrl;
        String str5 = pageTitle.description;
        String str6 = pageTitle._displayText;
        String str7 = pageTitle.extract;
        pageTitle.getClass();
        wikiSite.getClass();
        str2.getClass();
        return new PageTitle(str, wikiSite, str2, str3, str4, str5, str6, str7);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PageTitle)) {
            return false;
        }
        PageTitle pageTitle = (PageTitle) obj;
        return pageTitle.getPrefixedText().equals(getPrefixedText()) && pageTitle.getNamespace().equals(getNamespace()) && Intrinsics.areEqual(pageTitle.wikiSite.languageCode, this.wikiSite.languageCode);
    }

    public final String getDisplayText() {
        String str = this._displayText;
        if (str == null) {
            str = "";
        }
        if (str.length() != 0) {
            return str;
        }
        StringUtil stringUtil = StringUtil.INSTANCE;
        return StringsKt__StringsJVMKt.replace$default(getPrefixedText(), "_", " ");
    }

    public final String getNamespace() {
        String str = this._namespace;
        return str == null ? "" : str;
    }

    public final String getPrefixedText() {
        if (getNamespace().length() == 0) {
            return getText();
        }
        StringUtil stringUtil = StringUtil.INSTANCE;
        return Animation.CC.m(StringsKt__StringsJVMKt.replace$default(getNamespace(), " ", "_"), ":", getText());
    }

    public final String getText() {
        StringUtil stringUtil = StringUtil.INSTANCE;
        return StringUtil.addUnderscores(this._text);
    }

    public final String getUri() {
        String str;
        String authority = this.wikiSite.authority();
        String scheme = this.wikiSite.scheme();
        String str2 = (!StringsKt__StringsJVMKt.startsWith(authority, "zh", false) || authority.equals("zh-yue")) ? "wiki" : this.wikiSite.languageCode;
        String encodeURL = UriUtil.encodeURL(getPrefixedText());
        String str3 = this.fragment;
        if (str3 == null || str3.length() == 0) {
            str = "";
        } else {
            String str4 = this.fragment;
            str4.getClass();
            str = "#".concat(UriUtil.encodeURL(str4));
        }
        return String.format("%1$s://%2$s/%3$s/%4$s%5$s", Arrays.copyOf(new Object[]{scheme, authority, str2, encodeURL, str}, 5));
    }

    public final String getWebApiUrl(String str) {
        String scheme = this.wikiSite.scheme();
        String authority = this.wikiSite.authority();
        try {
            String encode = URLEncoder.encode(getPrefixedText(), "UTF-8");
            encode.getClass();
            return String.format("%1$s://%2$s/w/index.php?title=%3$s&%4$s", Arrays.copyOf(new Object[]{scheme, authority, StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"), str}, 4));
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public final int hashCode() {
        String str = this._namespace;
        int m = Animation.CC.m(Animation.CC.m((str != null ? str.hashCode() : 0) * 31, 31, this.wikiSite.languageCode), 31, this._text);
        String str2 = this.fragment;
        return m + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isContributions() {
        Object firstOrNull = CollectionsKt.firstOrNull(StringsKt.split$default(getText(), new char[]{'/'}));
        String str = this.wikiSite.languageCode;
        Map map = ContributionsNameData.dataMap;
        str.getClass();
        Map map2 = ContributionsNameData.dataMap;
        String str2 = (String) map2.get(NodeUtils.getDesiredLanguageCode(str));
        if (str2 == null) {
            Object obj = map2.get("en");
            obj.getClass();
            str2 = (String) obj;
        }
        return Intrinsics.areEqual(firstOrNull, str2);
    }

    public final boolean isFilePage() {
        Namespace namespace = namespace();
        namespace.getClass();
        return namespace == Namespace.FILE;
    }

    public final boolean isMainPage() {
        return MainPageNameData.valueFor(this.wikiSite.languageCode).equals(getDisplayText());
    }

    public final boolean isSpecial() {
        Namespace namespace = namespace();
        namespace.getClass();
        return namespace == Namespace.SPECIAL;
    }

    public final Namespace namespace() {
        Namespace.Companion companion = Namespace.Companion;
        WikiSite wikiSite = this.wikiSite;
        StringUtil stringUtil = StringUtil.INSTANCE;
        String replace$default = StringsKt__StringsJVMKt.replace$default(getNamespace(), "_", " ");
        companion.getClass();
        wikiSite.getClass();
        if (FileAliasData.valueFor(wikiSite.languageCode).equalsIgnoreCase(replace$default) || FileAliasData.valueFor("en").equalsIgnoreCase(replace$default)) {
            return Namespace.FILE;
        }
        String str = wikiSite.languageCode;
        Map map = SpecialAliasData.dataMap;
        str.getClass();
        Map map2 = SpecialAliasData.dataMap;
        String str2 = (String) map2.get(NodeUtils.getDesiredLanguageCode(str));
        if (str2 == null) {
            Object obj = map2.get("en");
            obj.getClass();
            str2 = (String) obj;
        }
        if (!str2.equalsIgnoreCase(replace$default)) {
            String str3 = (String) map2.get(NodeUtils.getDesiredLanguageCode("en"));
            if (str3 == null) {
                Object obj2 = map2.get("en");
                obj2.getClass();
                str3 = (String) obj2;
            }
            if (!str3.equalsIgnoreCase(replace$default)) {
                return (TalkAliasData.valueFor(wikiSite.languageCode).equalsIgnoreCase(replace$default) || TalkAliasData.valueFor("en").equalsIgnoreCase(replace$default)) ? Namespace.TALK : (UserAliasData.valueFor(wikiSite.languageCode).equalsIgnoreCase(replace$default) || UserAliasData.valueFor("en").equalsIgnoreCase(replace$default)) ? Namespace.USER : (UserTalkAliasData.valueFor(wikiSite.languageCode).equalsIgnoreCase(replace$default) || UserTalkAliasData.valueFor("en").equalsIgnoreCase(replace$default)) ? Namespace.USER_TALK : Namespace.MAIN;
            }
        }
        return Namespace.SPECIAL;
    }

    public final void setDisplayText(String str) {
        str.getClass();
        this._displayText = str;
    }

    public final void setNamespace(String str) {
        String str2;
        String str3;
        String str4;
        str.getClass();
        String str5 = this._namespace;
        if (str5 != null && str5.length() != 0 && (str4 = this._displayText) != null && str4.length() != 0) {
            String str6 = this._displayText;
            if (str6 == null) {
                str6 = "";
            }
            String str7 = this._namespace;
            str7.getClass();
            if (StringsKt__StringsJVMKt.startsWith(str6, str7, false)) {
                StringUtil stringUtil = StringUtil.INSTANCE;
                String str8 = this._displayText;
                str8.getClass();
                this._displayText = StringsKt.substringAfter$default(str8, ':');
            }
        }
        this._namespace = str;
        if (str.length() == 0 || (str3 = this._displayText) == null || str3.length() == 0) {
            str2 = this._displayText;
        } else {
            StringUtil stringUtil2 = StringUtil.INSTANCE;
            str2 = Animation.CC.m(StringsKt__StringsJVMKt.replace$default(str, "_", " "), ":", this._displayText);
        }
        this._displayText = str2;
    }

    public final String toString() {
        return getPrefixedText();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this._namespace);
        this.wikiSite.writeToParcel(parcel, i);
        parcel.writeString(this._text);
        parcel.writeString(this.fragment);
        parcel.writeString(this.thumbUrl);
        parcel.writeString(this.description);
        parcel.writeString(this._displayText);
        parcel.writeString(this.extract);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageTitle(String str, String str2, String str3, WikiSite wikiSite) {
        this(str, wikiSite, str2, null, str3, null, null, null);
        str2.getClass();
        wikiSite.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageTitle(String str, String str2, WikiSite wikiSite) {
        this(str, wikiSite, str2, null, null, null, null, null);
        str2.getClass();
        wikiSite.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageTitle(String str, WikiSite wikiSite, String str2, String str3, String str4) {
        this(str, wikiSite, str2);
        wikiSite.getClass();
        this._displayText = str4;
        this.description = str3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageTitle(String str, WikiSite wikiSite, String str2, String str3, String str4, String str5) {
        this(str, wikiSite, str2, str3, str4);
        wikiSite.getClass();
        this.extract = str5;
    }

    public PageTitle(String str, WikiSite wikiSite, String str2, String str3, String str4, String str5, String str6, String str7) {
        wikiSite.getClass();
        str2.getClass();
        this._namespace = str;
        this.wikiSite = wikiSite;
        this._text = str2;
        this.fragment = str3;
        this.thumbUrl = str4;
        this.description = str5;
        this._displayText = str6;
        this.extract = str7;
    }
}
