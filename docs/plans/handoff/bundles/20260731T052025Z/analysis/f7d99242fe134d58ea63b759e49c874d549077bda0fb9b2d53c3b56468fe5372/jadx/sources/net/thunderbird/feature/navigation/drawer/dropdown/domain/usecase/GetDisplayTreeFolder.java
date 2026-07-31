package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayFolder;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetDisplayTreeFolder {
    public final Logger logger;
    public long placeholderCounter;

    public GetDisplayTreeFolder(Logger logger) {
        this.logger = logger;
    }

    public final ArrayList buildAccountFolderTree(ArrayList arrayList, String str, String str2) {
        String str3;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            String str4 = (String) CollectionsKt.getOrNull(0, (List) ((Pair) next).first);
            if (str4 == null) {
                str4 = "(Unnamed)";
            }
            Object obj = linkedHashMap.get(str4);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(str4, obj);
            }
            ((List) obj).add(next);
        }
        ArrayList arrayList2 = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str5 = (String) entry.getKey();
            List<Pair> list = (List) entry.getValue();
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Pair pair = (Pair) it2.next();
                List list2 = (List) pair.first;
                Pair pair2 = list2.size() > 1 ? new Pair(CollectionsKt.drop(1, list2), (MailDisplayFolder) pair.second) : null;
                if (pair2 != null) {
                    arrayList3.add(pair2);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (Pair pair3 : list) {
                List list3 = (List) pair3.first;
                MailDisplayFolder mailDisplayFolder = (MailDisplayFolder) pair3.second;
                if (list3.size() != 1) {
                    mailDisplayFolder = null;
                }
                if (mailDisplayFolder != null) {
                    arrayList4.add(mailDisplayFolder);
                }
            }
            String m = StringsKt.isBlank(str2) ? str5 : Config.CC.m(str2, str, str5);
            MailDisplayFolder mailDisplayFolder2 = (MailDisplayFolder) CollectionsKt.firstOrNull((List) arrayList4);
            if (mailDisplayFolder2 == null) {
                long j = this.placeholderCounter + 1;
                this.placeholderCounter = j;
                str3 = m;
                mailDisplayFolder2 = new MailDisplayFolder(null, new Folder(j, m, FolderType.REGULAR, false), true, 0, 0, str);
            } else {
                str3 = m;
            }
            ArrayList buildAccountFolderTree = buildAccountFolderTree(arrayList3, str, str3);
            Iterator it3 = buildAccountFolderTree.iterator();
            int i = 0;
            while (it3.hasNext()) {
                i += ((DisplayTreeFolder) it3.next()).totalUnreadCount;
            }
            int i2 = i + mailDisplayFolder2.unreadMessageCount;
            Iterator it4 = buildAccountFolderTree.iterator();
            int i3 = 0;
            while (it4.hasNext()) {
                i3 += ((DisplayTreeFolder) it4.next()).totalStarredCount;
            }
            arrayList2.add(new DisplayTreeFolder(mailDisplayFolder2, str5, i2, i3 + mailDisplayFolder2.starredMessageCount, Okio.toImmutableList(buildAccountFolderTree)));
        }
        return arrayList2;
    }
}
