package coil3.network;

import android.util.Log;
import androidx.compose.animation.core.Animation;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.room.Room;
import androidx.room.migration.Migration;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginClient;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NetworkHeaders {
    public static final NetworkHeaders EMPTY = new NetworkHeaders(MapsKt__MapsKt.toMap(new LinkedHashMap()));
    public final Map data;

    public NetworkHeaders(Map map) {
        this.data = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkHeaders) && this.data.equals(((NetworkHeaders) obj).data);
    }

    public final String get() {
        String lowerCase = "Content-Type".toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        List list = (List) this.data.get(lowerCase);
        if (list != null) {
            return (String) CollectionsKt.lastOrNull(list);
        }
        return null;
    }

    public final int hashCode() {
        return this.data.hashCode();
    }

    public final String toString() {
        return "NetworkHeaders(data=" + this.data + ")";
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements CookieJar {
        public static Builder INSTANCE;
        public final LinkedHashMap data;

        public Builder(int i) {
            switch (i) {
                case 2:
                    this.data = new LinkedHashMap();
                    break;
                case 3:
                    this.data = new LinkedHashMap();
                    break;
                case 4:
                    this.data = new LinkedHashMap();
                    break;
                case 5:
                    this.data = new LinkedHashMap();
                    break;
                case 6:
                    this.data = new LinkedHashMap();
                    break;
                default:
                    this.data = new LinkedHashMap(0, 0.75f, true);
                    break;
            }
        }

        public static String key(int i, int i2, String str) {
            return i + '-' + i2 + '-' + str;
        }

        public void addInitializer(KClass kClass, Function1 function1) {
            kClass.getClass();
            function1.getClass();
            LinkedHashMap linkedHashMap = this.data;
            if (linkedHashMap.containsKey(kClass)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("A `initializer` with the same `clazz` has already been added: ", kClass.getQualifiedName(), "."));
            } else {
                linkedHashMap.put(kClass, new ViewModelInitializer(kClass, function1));
            }
        }

        public void addMigration(Migration migration) {
            migration.getClass();
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Integer valueOf = Integer.valueOf(i);
            LinkedHashMap linkedHashMap = this.data;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            if (treeMap.containsKey(Integer.valueOf(i2))) {
                Log.w("ROOM", "Overriding migration " + treeMap.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap.put(Integer.valueOf(i2), migration);
        }

        public TalkTopicsViewModel.Factory build() {
            Collection values = this.data.values();
            values.getClass();
            ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) values.toArray(new ViewModelInitializer[0]);
            return new TalkTopicsViewModel.Factory(1, (ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
        }

        public void buildCookieList(ArrayList arrayList, List list, String str) {
            Iterator it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                Cookie cookie = (Cookie) it.next();
                if (str == null || StringsKt__StringsJVMKt.startsWith(cookie.name, str, false)) {
                    if (cookie.expiresAt < System.currentTimeMillis()) {
                        it.remove();
                        z = true;
                    } else {
                        arrayList.add(cookie);
                    }
                }
            }
            if (z) {
                persistCookies();
            }
        }

        public synchronized String getCookieByName(String str, String str2, boolean z) {
            try {
                str2.getClass();
                List<Cookie> list = (List) this.data.get(str2);
                if (list != null) {
                    for (Cookie cookie : list) {
                        if (z ? cookie.name.equals(str) : StringsKt.contains(cookie.name, str, false)) {
                            return cookie.value;
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized String getCookieValueByName(String str) {
            Iterator it = this.data.keySet().iterator();
            while (it.hasNext()) {
                String cookieByName = getCookieByName(str, (String) it.next(), true);
                if (cookieByName != null) {
                    return cookieByName;
                }
            }
            return null;
        }

        @Override // okhttp3.CookieJar
        public synchronized List loadForRequest(HttpUrl httpUrl) {
            ArrayList arrayList;
            try {
                httpUrl.getClass();
                arrayList = new ArrayList();
                String authority = httpUrl.uri().getAuthority();
                for (String str : this.data.keySet()) {
                    Object obj = this.data.get(str);
                    obj.getClass();
                    List list = (List) obj;
                    authority.getClass();
                    if (StringsKt__StringsJVMKt.endsWith(authority, str, false)) {
                        buildCookieList(arrayList, list, null);
                    } else if (str.length() != 0 && (str.equals("wikipedia.org") || StringsKt__StringsJVMKt.endsWith(str, ".wikipedia.org", false) || str.equals("wikimedia.org") || StringsKt__StringsJVMKt.endsWith(str, ".wikimedia.org", false) || str.equals("wikidata.org") || StringsKt__StringsJVMKt.endsWith(str, ".wikidata.org", false))) {
                        buildCookieList(arrayList, list, "centralauth_");
                    }
                }
                if (LoginClient.enqueueForceEmailAuth && StringsKt.contains(httpUrl.url, "action=clientlogin", false)) {
                    if (!Intrinsics.areEqual(StringsKt.trim("forceEmailAuth").toString(), "forceEmailAuth")) {
                        throw new IllegalArgumentException("name is not trimmed");
                    }
                    if (!Intrinsics.areEqual(StringsKt.trim("1").toString(), "1")) {
                        throw new IllegalArgumentException("value is not trimmed");
                    }
                    authority.getClass();
                    String canonicalHost = _HostnamesCommonKt.toCanonicalHost(authority);
                    if (canonicalHost == null) {
                        throw new IllegalArgumentException("unexpected domain: ".concat(authority));
                    }
                    arrayList.add(new Cookie("forceEmailAuth", "1", 253402300799999L, canonicalHost, "/", true, false, false, false, null));
                    LoginClient.enqueueForceEmailAuth = false;
                }
            } catch (Throwable th) {
                throw th;
            }
            return arrayList;
        }

        public void persistCookies() {
            String str;
            Prefs prefs = Prefs.INSTANCE;
            LinkedHashMap linkedHashMap = this.data;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Object key = entry.getKey();
                List list = (List) entry.getValue();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Cookie) it.next()).toString());
                }
                linkedHashMap2.put(key, arrayList);
            }
            JsonImpl jsonImpl = JsonUtil.json;
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                str = jsonImpl2.encodeToString(new HashMapSerializer(stringSerializer, new HashSetSerializer(stringSerializer, 1), 1), linkedHashMap2);
            } catch (Exception e) {
                L.w(e);
                str = null;
            }
            PrefsIoUtil.setString(R.string.preference_key_cookie_map, str);
        }

        public List remove(String str) {
            str.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = this.data;
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                if (Intrinsics.areEqual(((WorkGenerationalId) entry.getKey()).workSpecId, str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                linkedHashMap2.remove((WorkGenerationalId) it.next());
            }
            return CollectionsKt.toList(linkedHashMap.values());
        }

        @Override // okhttp3.CookieJar
        public synchronized void saveFromResponse(HttpUrl httpUrl, List list) {
            try {
                httpUrl.getClass();
                if (list.isEmpty()) {
                    return;
                }
                Iterator it = list.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Cookie cookie = (Cookie) it.next();
                    String str = cookie.domain;
                    if (str.length() == 0) {
                        str = httpUrl.uri().getAuthority();
                    }
                    if (!this.data.containsKey(str)) {
                        this.data.put(str, new ArrayList());
                    }
                    Object obj = this.data.get(str);
                    obj.getClass();
                    List list2 = (List) obj;
                    if (cookie.expiresAt >= System.currentTimeMillis() && !"deleted".equals(cookie.value)) {
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                list2.add(cookie);
                                z = true;
                                break;
                            } else {
                                Cookie cookie2 = (Cookie) it2.next();
                                if (Intrinsics.areEqual(cookie2, cookie)) {
                                    break;
                                } else if (cookie2.name.equals(cookie.name)) {
                                    it2.remove();
                                }
                            }
                        }
                    }
                    Iterator it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (((Cookie) it3.next()).name.equals(cookie.name)) {
                            it3.remove();
                            z = true;
                        }
                    }
                }
                if (z) {
                    persistCookies();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public void set(String str) {
            String lowerCase = "Cache-Control".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            this.data.put(lowerCase, Room.mutableListOf(str));
        }

        public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
            LinkedHashMap linkedHashMap = this.data;
            Object obj = linkedHashMap.get(workGenerationalId);
            if (obj == null) {
                obj = new StartStopToken(workGenerationalId);
                linkedHashMap.put(workGenerationalId, obj);
            }
            return (StartStopToken) obj;
        }

        public Builder(LinkedHashMap linkedHashMap) {
            this.data = linkedHashMap;
        }

        public Builder(NetworkHeaders networkHeaders) {
            Map map = networkHeaders.data;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), CollectionsKt.toMutableList((Collection) entry.getValue()));
            }
            this.data = linkedHashMap;
        }

        public StartStopToken remove(WorkGenerationalId workGenerationalId) {
            workGenerationalId.getClass();
            return (StartStopToken) this.data.remove(workGenerationalId);
        }
    }
}
