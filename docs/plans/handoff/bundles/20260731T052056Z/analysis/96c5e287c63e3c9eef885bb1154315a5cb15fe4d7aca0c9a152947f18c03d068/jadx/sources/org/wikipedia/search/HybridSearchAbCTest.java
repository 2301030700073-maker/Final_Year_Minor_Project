package org.wikipedia.search;

import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jsoup.parser.Token;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.RemoteConfig$RemoteConfigAndroidV1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HybridSearchAbCTest extends Token {
    public final List supportedLanguages;

    public HybridSearchAbCTest() {
        super(3, "apps_hybridsearch");
        this.supportedLanguages = Room.listOf((Object[]) new String[]{"en", "pt", "fr", "el"});
    }

    public final String getGroupName() {
        int group = getGroup();
        return group != 1 ? group != 2 ? "control" : "semanticlexical" : "lexicalsemantic";
    }

    public final boolean isHybridSearchEnabled(String str) {
        Boolean bool;
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = PrefsIoUtil.getConfig().androidv1;
        if ((remoteConfig$RemoteConfigAndroidV1 == null || (bool = remoteConfig$RemoteConfigAndroidV1.hybridSearchEnabled) == null) ? false : bool.booleanValue()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.isHybridSearchEnabled() && getGroup() != 0 && isLanguageSupported(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isLanguageSupported(String str) {
        List list = this.supportedLanguages;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (StringsKt__StringsJVMKt.equals((String) it.next(), str, true)) {
                return true;
            }
        }
        return false;
    }
}
