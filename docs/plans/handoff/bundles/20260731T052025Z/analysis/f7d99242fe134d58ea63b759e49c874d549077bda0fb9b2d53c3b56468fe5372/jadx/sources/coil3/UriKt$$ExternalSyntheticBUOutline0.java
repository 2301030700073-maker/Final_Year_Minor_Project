package coil3;

import android.database.Cursor;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import androidx.arch.core.util.Function;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.impl.model.WorkSpec;
import app.k9mail.legacy.mailstore.FolderMapper;
import app.k9mail.legacy.mailstore.RemoteFolderDetails;
import coil3.EventListener;
import coil3.request.ImageRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat;
import okhttp3.ConnectionPool;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UriKt$$ExternalSyntheticBUOutline0 implements Function, FolderMapper, EventListener.Factory, NotificationSenderCompat.OnResultListener {
    public final /* synthetic */ int $r8$classId;

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new AssertionError(str + obj);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((WorkSpec.WorkInfoPojo) it.next()).toWorkInfo());
        }
        return arrayList;
    }

    @Override // coil3.EventListener.Factory
    public EventListener create(ImageRequest imageRequest) {
        int i = EventListener.Factory.CC.$r8$clinit;
        return EventListener.NONE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // app.k9mail.legacy.mailstore.FolderMapper
    public Object map(ConnectionPool connectionPool) {
        long j;
        FolderType folderType;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i = this.$r8$classId;
        FolderType folderType2 = FolderType.INBOX;
        FolderType folderType3 = FolderType.DRAFTS;
        FolderType folderType4 = FolderType.SENT;
        FolderType folderType5 = FolderType.TRASH;
        FolderType folderType6 = FolderType.SPAM;
        FolderType folderType7 = FolderType.ARCHIVE;
        FolderType folderType8 = FolderType.REGULAR;
        switch (i) {
            case 5:
                long id = connectionPool.getId();
                String serverIdOrThrow = connectionPool.serverIdOrThrow();
                String name = connectionPool.getName();
                String string = ((Cursor) connectionPool.delegate).getString(2);
                string.getClass();
                switch (SchemaInfoUtilKt.fromDatabaseFolderType(string).ordinal()) {
                    case 0:
                    case 2:
                        folderType5 = folderType8;
                        j = id;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case 1:
                        folderType5 = folderType2;
                        j = id;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case 3:
                        j = id;
                        folderType5 = folderType3;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case 4:
                        j = id;
                        folderType5 = folderType4;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case 5:
                        j = id;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case 6:
                        folderType5 = folderType6;
                        j = id;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        folderType5 = folderType7;
                        j = id;
                        return new RemoteFolder(j, serverIdOrThrow, name, folderType5);
                    default:
                        m857m();
                        return null;
                }
            case 6:
                long id2 = connectionPool.getId();
                String serverIdOrThrow2 = connectionPool.serverIdOrThrow();
                String name2 = connectionPool.getName();
                Cursor cursor = (Cursor) connectionPool.delegate;
                String string2 = cursor.getString(2);
                string2.getClass();
                switch (SchemaInfoUtilKt.fromDatabaseFolderType(string2).ordinal()) {
                    case 0:
                    case 2:
                        folderType = folderType8;
                        break;
                    case 1:
                        folderType = folderType2;
                        break;
                    case 3:
                        folderType = folderType3;
                        break;
                    case 4:
                        folderType = folderType4;
                        break;
                    case 5:
                        folderType = folderType5;
                        break;
                    case 6:
                        folderType = folderType6;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        folderType = folderType7;
                        break;
                    default:
                        m857m();
                        return null;
                }
                RemoteFolder remoteFolder = new RemoteFolder(id2, serverIdOrThrow2, name2, folderType);
                boolean z5 = false;
                boolean z6 = cursor.getInt(5) == 1;
                if (cursor.getInt(6) == 1) {
                    z = false;
                    z5 = true;
                } else {
                    z = false;
                }
                boolean z7 = cursor.getInt(7) == 1 ? true : z;
                if (cursor.getInt(8) == 1) {
                    z2 = z;
                    z = true;
                } else {
                    z2 = z;
                }
                if (cursor.getInt(9) == 1) {
                    z3 = z7;
                    z4 = true;
                } else {
                    z3 = z7;
                    z4 = z2;
                }
                if (cursor.getInt(10) == 1) {
                    z2 = true;
                }
                return new RemoteFolderDetails(remoteFolder, z6, z5, z3, z, z4, z2);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Cursor) connectionPool.delegate).getString(3);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Boolean.TRUE;
            default:
                return Integer.valueOf(((Cursor) connectionPool.delegate).getInt(11));
        }
    }

    @Override // net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat.OnResultListener
    public void onResult(Outcome outcome) {
        switch (this.$r8$classId) {
            case 27:
                Log.v("notificationSender outcome = " + outcome, new Object[0]);
                break;
            default:
                Log.v("notificationDismisser outcome = " + outcome, new Object[0]);
                break;
        }
    }

    public static /* bridge */ /* synthetic */ ColorSpace m(Object obj) {
        return (ColorSpace) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ ImageDecoder.Source m855m(Object obj) {
        return (ImageDecoder.Source) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AnimatedImageDrawable m856m(Object obj) {
        return (AnimatedImageDrawable) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m857m() {
        throw new SerializationException();
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void m(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void m(String str, Throwable th) {
        throw new IllegalStateException(str, th);
    }
}
