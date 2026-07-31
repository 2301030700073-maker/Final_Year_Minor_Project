package com.bytehamster.lib.preferencesearch;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import android.util.Rational;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.legacy.ui.folder.DisplayFolder;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.folders.RemoteFolder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceParser {
    public static final List BLACKLIST = Arrays.asList(SearchPreference.class.getName(), "PreferenceCategory");
    public static final List CONTAINERS = Arrays.asList("PreferenceCategory", "PreferenceScreen");
    public ArrayList allEntries;
    public Context context;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bytehamster.lib.preferencesearch.PreferenceParser$1, reason: invalid class name */
    public final class AnonymousClass1 implements Comparator {
        public final /* synthetic */ int $r8$classId;
        public final Object val$keyword;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.val$keyword = obj;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Comparator comparator = String.CASE_INSENSITIVE_ORDER;
            Object obj3 = this.val$keyword;
            switch (i) {
                case 0:
                    String str = (String) obj3;
                    float score = ((PreferenceItem) obj2).getScore(str);
                    float score2 = ((PreferenceItem) obj).getScore(str);
                    if (score < score2) {
                        return -1;
                    }
                    return score == score2 ? 0 : 1;
                case 1:
                    ArrayList arrayList = ((StreamGraphImpl) obj3).streams;
                    Iterator it = ((StreamGraphImpl.OutputConfig) obj).streamBuilder.iterator();
                    if (it.hasNext()) {
                        Integer valueOf = Integer.valueOf(arrayList.indexOf((CameraStream) it.next()));
                        while (it.hasNext()) {
                            Integer valueOf2 = Integer.valueOf(arrayList.indexOf((CameraStream) it.next()));
                            if (valueOf.compareTo(valueOf2) > 0) {
                                valueOf = valueOf2;
                            }
                        }
                        Iterator it2 = ((StreamGraphImpl.OutputConfig) obj2).streamBuilder.iterator();
                        if (it2.hasNext()) {
                            Integer valueOf3 = Integer.valueOf(arrayList.indexOf((CameraStream) it2.next()));
                            while (it2.hasNext()) {
                                Integer valueOf4 = Integer.valueOf(arrayList.indexOf((CameraStream) it2.next()));
                                if (valueOf3.compareTo(valueOf4) > 0) {
                                    valueOf3 = valueOf4;
                                }
                            }
                            return valueOf.compareTo(valueOf3);
                        }
                    }
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    return 0;
                case 2:
                    Rational rational = (Rational) obj2;
                    Rational rational2 = (Rational) obj3;
                    float floatValue = ((Rational) obj).floatValue();
                    float floatValue2 = rational2.floatValue();
                    float f = floatValue > floatValue2 ? floatValue2 / floatValue : floatValue / floatValue2;
                    float floatValue3 = rational.floatValue();
                    float floatValue4 = rational2.floatValue();
                    return Float.compare(floatValue3 > floatValue4 ? floatValue4 / floatValue3 : floatValue3 / floatValue4, f);
                case 3:
                    DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = (DiskLruCache$$ExternalSyntheticLambda0) obj3;
                    return ((Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(obj)).compareTo((Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(obj2));
                case 4:
                    int compare = ((SemanticsSortKt$special$$inlined$thenBy$1) obj3).compare(obj, obj2);
                    return compare != 0 ? compare : Integer.valueOf(((SemanticsNode) obj).id).compareTo(Integer.valueOf(((SemanticsNode) obj2).id));
                case 5:
                    int compare2 = ((ViewPager.AnonymousClass1) obj3).compare(obj, obj2);
                    return compare2 != 0 ? compare2 : comparator.compare(((RemoteFolder) obj).displayName, ((RemoteFolder) obj2).displayName);
                case 6:
                    int compare3 = ((ViewPager.AnonymousClass1) obj3).compare(obj, obj2);
                    if (compare3 != 0) {
                        return compare3;
                    }
                    FolderType folderType = ((DisplayFolder) obj2).folder.type;
                    FolderType folderType2 = FolderType.OUTBOX;
                    return Boolean.valueOf(folderType == folderType2).compareTo(Boolean.valueOf(((DisplayFolder) obj).folder.type == folderType2));
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    int compare4 = ((AnonymousClass1) obj3).compare(obj, obj2);
                    if (compare4 != 0) {
                        return compare4;
                    }
                    FolderType folderType3 = ((DisplayFolder) obj2).folder.type;
                    FolderType folderType4 = FolderType.REGULAR;
                    return Boolean.valueOf(folderType3 != folderType4).compareTo(Boolean.valueOf(((DisplayFolder) obj).folder.type != folderType4));
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    int compare5 = ((AnonymousClass1) obj3).compare(obj, obj2);
                    return compare5 != 0 ? compare5 : Boolean.valueOf(((DisplayFolder) obj2).isInTopGroup).compareTo(Boolean.valueOf(((DisplayFolder) obj).isInTopGroup));
                default:
                    int compare6 = ((ViewPager.AnonymousClass1) obj3).compare(obj, obj2);
                    return compare6 != 0 ? compare6 : comparator.compare(((net.thunderbird.feature.mail.folder.api.RemoteFolder) obj).name, ((net.thunderbird.feature.mail.folder.api.RemoteFolder) obj2).name);
            }
        }
    }

    public static String getAttribute(XmlResourceParser xmlResourceParser, String str, String str2) {
        for (int i = 0; i < xmlResourceParser.getAttributeCount(); i++) {
            Log.d("ns", xmlResourceParser.getAttributeNamespace(i));
            if (str2.equals(xmlResourceParser.getAttributeName(i)) && str.equals(xmlResourceParser.getAttributeNamespace(i))) {
                return xmlResourceParser.getAttributeValue(i);
            }
        }
        return null;
    }

    public final PreferenceItem parseSearchResult(XmlResourceParser xmlResourceParser) {
        PreferenceItem preferenceItem = new PreferenceItem();
        preferenceItem.keyBreadcrumbs = new ArrayList();
        preferenceItem.lastScore = 0.0f;
        String str = null;
        preferenceItem.lastKeyword = null;
        preferenceItem.title = readString(getAttribute(xmlResourceParser, "title"));
        preferenceItem.summary = readString(getAttribute(xmlResourceParser, "summary"));
        preferenceItem.key = readString(getAttribute(xmlResourceParser, "key"));
        String attribute = getAttribute(xmlResourceParser, "entries");
        if (attribute != null) {
            if (attribute.startsWith("@")) {
                try {
                    str = TextUtils.join(",", this.context.getResources().getStringArray(Integer.parseInt(attribute.substring(1))));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            str = attribute;
        }
        preferenceItem.entries = str;
        preferenceItem.keywords = readString(getAttribute(xmlResourceParser, "http://schemas.android.com/apk/com.bytehamster.lib.preferencesearch", "keywords"));
        Log.d("PreferenceParser", "Found: " + xmlResourceParser.getName() + "/" + preferenceItem);
        return preferenceItem;
    }

    public final String readString(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("@")) {
            try {
                return this.context.getString(Integer.parseInt(str.substring(1)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    public static String getAttribute(XmlResourceParser xmlResourceParser, String str) {
        if (getAttribute(xmlResourceParser, "http://schemas.android.com/apk/com.bytehamster.lib.preferencesearch", str) != null) {
            return getAttribute(xmlResourceParser, "http://schemas.android.com/apk/com.bytehamster.lib.preferencesearch", str);
        }
        return getAttribute(xmlResourceParser, "http://schemas.android.com/apk/res/android", str);
    }
}
