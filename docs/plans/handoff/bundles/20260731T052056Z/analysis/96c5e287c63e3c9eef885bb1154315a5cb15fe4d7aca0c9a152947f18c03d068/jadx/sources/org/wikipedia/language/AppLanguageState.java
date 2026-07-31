package org.wikipedia.language;

import android.content.Context;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppLanguageState {
    public final ArrayList _appLanguageCodes;
    public final ArrayList _mruLanguageCodes;
    public final SVGAndroidRenderer appLanguageLookUpTable;

    public AppLanguageState(Context context) {
        final SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer();
        sVGAndroidRenderer.canvas = context.getResources();
        final int i = 0;
        sVGAndroidRenderer.document = new SynchronizedLazyImpl(new Function0() { // from class: org.wikipedia.language.AppLanguageLookUpTable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                SVGAndroidRenderer sVGAndroidRenderer2 = sVGAndroidRenderer;
                switch (i2) {
                    case 0:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_keys);
                    case 1:
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List stringList = sVGAndroidRenderer2.getStringList(R.array.preference_bcp47_keys);
                        int size = stringList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            linkedHashMap.put(((List) ((SynchronizedLazyImpl) sVGAndroidRenderer2.document).getValue()).get(i3), stringList.get(i3));
                        }
                        return linkedHashMap;
                    case 2:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_canonical_names);
                    case 3:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_local_names);
                    default:
                        List stringList2 = sVGAndroidRenderer2.getStringList(R.array.preference_language_variants);
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(stringList2, 10));
                        Iterator it = stringList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(StringsKt.split$default((String) it.next(), new String[]{"|"}));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((List) next).size() > 1) {
                                arrayList2.add(next);
                            }
                        }
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            List list = (List) it3.next();
                            linkedHashMap2.put((String) list.get(0), StringsKt.split$default((CharSequence) list.get(1), new String[]{","}));
                        }
                        return linkedHashMap2;
                }
            }
        });
        final int i2 = 1;
        sVGAndroidRenderer.state = new SynchronizedLazyImpl(new Function0() { // from class: org.wikipedia.language.AppLanguageLookUpTable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                SVGAndroidRenderer sVGAndroidRenderer2 = sVGAndroidRenderer;
                switch (i22) {
                    case 0:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_keys);
                    case 1:
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List stringList = sVGAndroidRenderer2.getStringList(R.array.preference_bcp47_keys);
                        int size = stringList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            linkedHashMap.put(((List) ((SynchronizedLazyImpl) sVGAndroidRenderer2.document).getValue()).get(i3), stringList.get(i3));
                        }
                        return linkedHashMap;
                    case 2:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_canonical_names);
                    case 3:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_local_names);
                    default:
                        List stringList2 = sVGAndroidRenderer2.getStringList(R.array.preference_language_variants);
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(stringList2, 10));
                        Iterator it = stringList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(StringsKt.split$default((String) it.next(), new String[]{"|"}));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((List) next).size() > 1) {
                                arrayList2.add(next);
                            }
                        }
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            List list = (List) it3.next();
                            linkedHashMap2.put((String) list.get(0), StringsKt.split$default((CharSequence) list.get(1), new String[]{","}));
                        }
                        return linkedHashMap2;
                }
            }
        });
        final int i3 = 2;
        sVGAndroidRenderer.stateStack = new SynchronizedLazyImpl(new Function0() { // from class: org.wikipedia.language.AppLanguageLookUpTable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                SVGAndroidRenderer sVGAndroidRenderer2 = sVGAndroidRenderer;
                switch (i22) {
                    case 0:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_keys);
                    case 1:
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List stringList = sVGAndroidRenderer2.getStringList(R.array.preference_bcp47_keys);
                        int size = stringList.size();
                        for (int i32 = 0; i32 < size; i32++) {
                            linkedHashMap.put(((List) ((SynchronizedLazyImpl) sVGAndroidRenderer2.document).getValue()).get(i32), stringList.get(i32));
                        }
                        return linkedHashMap;
                    case 2:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_canonical_names);
                    case 3:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_local_names);
                    default:
                        List stringList2 = sVGAndroidRenderer2.getStringList(R.array.preference_language_variants);
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(stringList2, 10));
                        Iterator it = stringList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(StringsKt.split$default((String) it.next(), new String[]{"|"}));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((List) next).size() > 1) {
                                arrayList2.add(next);
                            }
                        }
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            List list = (List) it3.next();
                            linkedHashMap2.put((String) list.get(0), StringsKt.split$default((CharSequence) list.get(1), new String[]{","}));
                        }
                        return linkedHashMap2;
                }
            }
        });
        final int i4 = 3;
        sVGAndroidRenderer.parentStack = new SynchronizedLazyImpl(new Function0() { // from class: org.wikipedia.language.AppLanguageLookUpTable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                SVGAndroidRenderer sVGAndroidRenderer2 = sVGAndroidRenderer;
                switch (i22) {
                    case 0:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_keys);
                    case 1:
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List stringList = sVGAndroidRenderer2.getStringList(R.array.preference_bcp47_keys);
                        int size = stringList.size();
                        for (int i32 = 0; i32 < size; i32++) {
                            linkedHashMap.put(((List) ((SynchronizedLazyImpl) sVGAndroidRenderer2.document).getValue()).get(i32), stringList.get(i32));
                        }
                        return linkedHashMap;
                    case 2:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_canonical_names);
                    case 3:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_local_names);
                    default:
                        List stringList2 = sVGAndroidRenderer2.getStringList(R.array.preference_language_variants);
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(stringList2, 10));
                        Iterator it = stringList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(StringsKt.split$default((String) it.next(), new String[]{"|"}));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((List) next).size() > 1) {
                                arrayList2.add(next);
                            }
                        }
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            List list = (List) it3.next();
                            linkedHashMap2.put((String) list.get(0), StringsKt.split$default((CharSequence) list.get(1), new String[]{","}));
                        }
                        return linkedHashMap2;
                }
            }
        });
        final int i5 = 4;
        sVGAndroidRenderer.matrixStack = new SynchronizedLazyImpl(new Function0() { // from class: org.wikipedia.language.AppLanguageLookUpTable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                SVGAndroidRenderer sVGAndroidRenderer2 = sVGAndroidRenderer;
                switch (i22) {
                    case 0:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_keys);
                    case 1:
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List stringList = sVGAndroidRenderer2.getStringList(R.array.preference_bcp47_keys);
                        int size = stringList.size();
                        for (int i32 = 0; i32 < size; i32++) {
                            linkedHashMap.put(((List) ((SynchronizedLazyImpl) sVGAndroidRenderer2.document).getValue()).get(i32), stringList.get(i32));
                        }
                        return linkedHashMap;
                    case 2:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_canonical_names);
                    case 3:
                        return sVGAndroidRenderer2.getStringList(R.array.preference_language_local_names);
                    default:
                        List stringList2 = sVGAndroidRenderer2.getStringList(R.array.preference_language_variants);
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(stringList2, 10));
                        Iterator it = stringList2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(StringsKt.split$default((String) it.next(), new String[]{"|"}));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (((List) next).size() > 1) {
                                arrayList2.add(next);
                            }
                        }
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            List list = (List) it3.next();
                            linkedHashMap2.put((String) list.get(0), StringsKt.split$default((CharSequence) list.get(1), new String[]{","}));
                        }
                        return linkedHashMap2;
                }
            }
        });
        this.appLanguageLookUpTable = sVGAndroidRenderer;
        Prefs prefs = Prefs.INSTANCE;
        StringUtil stringUtil = StringUtil.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_language_mru, null);
        this._mruLanguageCodes = new ArrayList(StringUtil.csvToList(string == null ? "" : string));
        String string2 = PrefsIoUtil.getString(R.string.preference_key_language_app, null);
        this._appLanguageCodes = new ArrayList(StringUtil.csvToList(string2 != null ? string2 : ""));
        initAppLanguageCodes();
    }

    public final void addAppLanguageCode(String str) {
        ArrayList arrayList = this._appLanguageCodes;
        arrayList.remove(str);
        arrayList.add(str);
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setAppLanguageCodeList(arrayList);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance().resetWikiSite();
    }

    public final String getAppLanguageCanonicalName(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        SVGAndroidRenderer sVGAndroidRenderer = this.appLanguageLookUpTable;
        String str2 = (String) CollectionsKt.getOrNull((List) ((SynchronizedLazyImpl) sVGAndroidRenderer.stateStack).getValue(), sVGAndroidRenderer.indexOfCode(str));
        if ((str2 == null || str2.length() == 0) && str.length() != 0) {
            Locale locale = Locale.CHINESE;
            if (str.equals(locale.getLanguage())) {
                str2 = locale.getDisplayName(Locale.ENGLISH);
            } else if (str.equals("no")) {
                str2 = (String) CollectionsKt.getOrNull((List) ((SynchronizedLazyImpl) sVGAndroidRenderer.stateStack).getValue(), sVGAndroidRenderer.indexOfCode("nb"));
            }
        }
        if (str2 == null) {
            str2 = "";
        }
        return str2.length() == 0 ? str : str2;
    }

    public final String getAppLanguageCode() {
        return (String) CollectionsKt.first(getAppLanguageCodes());
    }

    public final List getAppLanguageCodes() {
        ArrayList arrayList = this._appLanguageCodes;
        if (arrayList.isEmpty()) {
            initAppLanguageCodes();
        }
        return arrayList;
    }

    public final String getAppLanguageLocalizedName(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        SVGAndroidRenderer sVGAndroidRenderer = this.appLanguageLookUpTable;
        SynchronizedLazyImpl synchronizedLazyImpl = (SynchronizedLazyImpl) sVGAndroidRenderer.parentStack;
        SynchronizedLazyImpl synchronizedLazyImpl2 = (SynchronizedLazyImpl) sVGAndroidRenderer.parentStack;
        String str2 = (String) CollectionsKt.getOrNull((List) synchronizedLazyImpl.getValue(), sVGAndroidRenderer.indexOfCode(str));
        if ((str2 == null || str2.length() == 0) && str.length() != 0) {
            Locale locale = Locale.CHINESE;
            if (str.equals(locale.getLanguage())) {
                str2 = locale.getDisplayName(locale);
            } else if (str.equals("no")) {
                str2 = (String) CollectionsKt.getOrNull((List) synchronizedLazyImpl2.getValue(), sVGAndroidRenderer.indexOfCode("nb"));
            } else if (str.equals("be-tarask")) {
                str2 = (String) CollectionsKt.getOrNull((List) synchronizedLazyImpl2.getValue(), sVGAndroidRenderer.indexOfCode("be-x-old"));
            } else if (str.equals("lzh")) {
                str2 = (String) CollectionsKt.getOrNull((List) synchronizedLazyImpl2.getValue(), sVGAndroidRenderer.indexOfCode("zh-classical"));
            }
        }
        if (str2 == null) {
            str2 = "";
        }
        return str2.length() == 0 ? str : str2;
    }

    public final String getBcp47LanguageCode(String str) {
        SVGAndroidRenderer sVGAndroidRenderer = this.appLanguageLookUpTable;
        sVGAndroidRenderer.getClass();
        String str2 = (String) ((Map) ((SynchronizedLazyImpl) sVGAndroidRenderer.state).getValue()).get(str);
        if (str2 == null) {
            str2 = "";
        }
        return str2.length() == 0 ? str : str2;
    }

    public final String getDefaultLanguageCode(String str) {
        Object obj;
        Iterator it = ((Map) ((SynchronizedLazyImpl) this.appLanguageLookUpTable.matrixStack).getValue()).entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (CollectionsKt.contains((List) ((Map.Entry) obj).getValue(), str)) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry != null) {
            return (String) entry.getKey();
        }
        return null;
    }

    public final List getLanguageVariants(String str) {
        return (List) ((Map) ((SynchronizedLazyImpl) this.appLanguageLookUpTable.matrixStack).getValue()).get(str);
    }

    public final ArrayList getRemainingSuggestedLanguageCodes() {
        List suggestedLanguagesFromSystem = LanguageUtil.getSuggestedLanguagesFromSystem();
        ArrayList arrayList = new ArrayList();
        for (Object obj : suggestedLanguagesFromSystem) {
            String str = (String) obj;
            if (!this._appLanguageCodes.contains(str) && CollectionsKt.contains((List) ((SynchronizedLazyImpl) this.appLanguageLookUpTable.document).getValue(), str)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final String getSystemLanguageCode() {
        Locale locale = Locale.getDefault();
        locale.getClass();
        String localeToWikiLanguageCode = LanguageUtil.localeToWikiLanguageCode(locale);
        return CollectionsKt.contains((List) ((SynchronizedLazyImpl) this.appLanguageLookUpTable.document).getValue(), localeToWikiLanguageCode) ? localeToWikiLanguageCode : "en";
    }

    public final void initAppLanguageCodes() {
        ArrayList arrayList = this._appLanguageCodes;
        if (arrayList.isEmpty()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isInitialOnboardingEnabled()) {
                setAppLanguageCodes(getRemainingSuggestedLanguageCodes());
            } else {
                addAppLanguageCode(getSystemLanguageCode());
            }
        }
        if (arrayList.isEmpty()) {
            addAppLanguageCode(getSystemLanguageCode());
        }
    }

    public final void setAppLanguageCodes(ArrayList arrayList) {
        arrayList.getClass();
        ArrayList arrayList2 = this._appLanguageCodes;
        arrayList2.clear();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((String) next).length() > 0) {
                arrayList3.add(next);
            }
        }
        arrayList2.addAll(arrayList3);
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setAppLanguageCodeList(arrayList2);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Jsoup.getInstance().resetWikiSite();
    }
}
