package org.wikipedia.readinglist.sync;

import j$.time.Instant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.dataclient.restbase.RbServiceError;
import org.wikipedia.readinglist.sync.SyncedReadingLists;
import retrofit2.Response;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListClient {
    public Instant lastDateHeader;
    public final WikiSite wiki;

    public ReadingListClient(WikiSite wikiSite) {
        this.wiki = wikiSite;
    }

    public static boolean isErrorType(String str, Throwable th) {
        RbServiceError rbServiceError;
        if ((th instanceof HttpStatusException) && (rbServiceError = ((HttpStatusException) th).serviceError) != null) {
            String str2 = rbServiceError.errorKey;
            if (str2 == null && (str2 = rbServiceError.title) == null) {
                str2 = "";
            }
            if (StringsKt.contains(str2, str, false)) {
                return true;
            }
        }
        return false;
    }

    public final long addPageToList(long j, String str, SyncedReadingLists.RemoteReadingListEntry remoteReadingListEntry) {
        str.getClass();
        remoteReadingListEntry.getClass();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        Response execute = ServiceFactory.getRest(this.wiki).addEntryToReadingList(j, str, remoteReadingListEntry).execute();
        SyncedReadingLists.RemoteIdResponse remoteIdResponse = (SyncedReadingLists.RemoteIdResponse) execute.body;
        if (remoteIdResponse != null) {
            saveLastDateHeader(execute);
            return remoteIdResponse.id;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incorrect response format.");
        return 0L;
    }

    public final ArrayList addPagesToList(String str, long j, ArrayList arrayList) {
        boolean isErrorType;
        str.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = CollectionsKt.windowed(arrayList, 50, 50).iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            if (list.isEmpty()) {
                break;
            }
            try {
                ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                Response execute = ServiceFactory.getRest(this.wiki).addEntriesToReadingList(j, str, new SyncedReadingLists.RemoteReadingListEntryBatch(list)).execute();
                SyncedReadingLists.RemoteIdResponseBatch remoteIdResponseBatch = (SyncedReadingLists.RemoteIdResponseBatch) execute.body;
                if (remoteIdResponseBatch == null) {
                    throw new IOException("Incorrect response format.");
                }
                saveLastDateHeader(execute);
                for (SyncedReadingLists.RemoteIdResponse remoteIdResponse : remoteIdResponseBatch.batch) {
                    arrayList2.add(Long.valueOf(remoteIdResponse.id));
                }
            } finally {
                if (!isErrorType) {
                }
            }
        }
        return arrayList2;
    }

    public final long createList(String str, SyncedReadingLists.RemoteReadingList remoteReadingList) {
        str.getClass();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        Response execute = ServiceFactory.getRest(this.wiki).createReadingList(str, remoteReadingList).execute();
        SyncedReadingLists.RemoteIdResponse remoteIdResponse = (SyncedReadingLists.RemoteIdResponse) execute.body;
        if (remoteIdResponse != null) {
            saveLastDateHeader(execute);
            return remoteIdResponse.id;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incorrect response format.");
        return 0L;
    }

    public final void deleteList(String str, long j) {
        str.getClass();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        Response execute = ServiceFactory.getRest(this.wiki).deleteReadingList(j, str).execute();
        execute.getClass();
        saveLastDateHeader(execute);
    }

    public final void deletePageFromList(long j, long j2, String str) {
        str.getClass();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        Response execute = ServiceFactory.getRest(this.wiki).deleteEntryFromReadingList(j, j2, str).execute();
        execute.getClass();
        saveLastDateHeader(execute);
    }

    public final ArrayList getAllLists() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        String str = null;
        while (true) {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            Response execute = ServiceFactory.getRest(this.wiki).getReadingLists(str).execute();
            SyncedReadingLists syncedReadingLists = (SyncedReadingLists) execute.body;
            if ((syncedReadingLists != null ? syncedReadingLists.lists : null) == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incorrect response format.");
                return null;
            }
            List list = syncedReadingLists.lists;
            String str2 = syncedReadingLists.continueStr;
            arrayList.addAll(list);
            if (str2 == null || str2.length() == 0) {
                str2 = null;
            }
            saveLastDateHeader(execute);
            if (str2 == null || str2.length() == 0) {
                break;
            }
            int i2 = i + 1;
            if (i >= 256) {
                break;
            }
            i = i2;
            str = str2;
        }
        return arrayList;
    }

    public final SyncedReadingLists getChangesSince(String str) {
        str.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        String str2 = null;
        while (true) {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            Response execute = ServiceFactory.getRest(this.wiki).getReadingListChangesSince(str, str2).execute();
            SyncedReadingLists syncedReadingLists = (SyncedReadingLists) execute.body;
            if (syncedReadingLists == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incorrect response format.");
                return null;
            }
            String str3 = syncedReadingLists.continueStr;
            List list = syncedReadingLists.lists;
            if (list != null) {
                arrayList.addAll(list);
            }
            List list2 = syncedReadingLists.entries;
            if (list2 != null) {
                arrayList2.addAll(list2);
            }
            if (str3 == null || str3.length() == 0) {
                str3 = null;
            }
            saveLastDateHeader(execute);
            if (str3 == null || str3.length() == 0) {
                break;
            }
            int i2 = i + 1;
            if (i >= 256) {
                break;
            }
            i = i2;
            str2 = str3;
        }
        return new SyncedReadingLists(arrayList, arrayList2);
    }

    public final ArrayList getListEntries(long j) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        String str = null;
        while (true) {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            Response execute = ServiceFactory.getRest(this.wiki).getReadingListEntries(j, str).execute();
            SyncedReadingLists syncedReadingLists = (SyncedReadingLists) execute.body;
            if ((syncedReadingLists != null ? syncedReadingLists.entries : null) == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incorrect response format.");
                return null;
            }
            List list = syncedReadingLists.entries;
            String str2 = syncedReadingLists.continueStr;
            arrayList.addAll(list);
            if (str2 == null || str2.length() == 0) {
                str2 = null;
            }
            saveLastDateHeader(execute);
            if (str2 == null || str2.length() == 0) {
                break;
            }
            int i2 = i + 1;
            if (i >= 256) {
                break;
            }
            i = i2;
            str = str2;
        }
        return arrayList;
    }

    public final void saveLastDateHeader(Response response) {
        this.lastDateHeader = response.rawResponse.headers.getInstant();
    }

    public final void setup(String str) {
        str.getClass();
        try {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            ServiceFactory.getRest(this.wiki).setupReadingLists(str).execute();
        } catch (Throwable th) {
            if (!isErrorType("already-set-up", th)) {
                throw th;
            }
        }
    }

    public final void tearDown(String str) {
        str.getClass();
        try {
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            ServiceFactory.getRest(this.wiki).tearDownReadingLists(str).execute();
        } catch (Throwable th) {
            if (!isErrorType("not-set-up", th)) {
                throw th;
            }
        }
    }

    public final void updateList(long j, String str, SyncedReadingLists.RemoteReadingList remoteReadingList) {
        str.getClass();
        ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
        Response execute = ServiceFactory.getRest(this.wiki).updateReadingList(j, str, remoteReadingList).execute();
        execute.getClass();
        saveLastDateHeader(execute);
    }
}
