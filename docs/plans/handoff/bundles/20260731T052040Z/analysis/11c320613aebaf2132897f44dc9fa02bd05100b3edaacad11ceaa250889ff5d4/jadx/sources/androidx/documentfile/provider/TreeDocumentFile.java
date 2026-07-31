package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.compose.ui.node.Owner;
import java.util.ArrayList;
import kotlin.ranges.RangesKt;
import org.koin.core.logger.Logger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TreeDocumentFile extends Logger {
    public final /* synthetic */ int $r8$classId = 0;
    public Context mContext;
    public Uri mUri;

    public TreeDocumentFile(TreeDocumentFile treeDocumentFile, Context context, Uri uri) {
        super(treeDocumentFile);
        this.mContext = context;
        this.mUri = uri;
    }

    @Override // org.koin.core.logger.Logger
    public final boolean canRead() {
        switch (this.$r8$classId) {
            case 0:
                Context context = this.mContext;
                Uri uri = this.mUri;
                if (context.checkCallingOrSelfUriPermission(uri, 1) != 0 || TextUtils.isEmpty(RangesKt.queryForString(context, uri, "mime_type"))) {
                    break;
                }
                break;
            default:
                Context context2 = this.mContext;
                Uri uri2 = this.mUri;
                if (context2.checkCallingOrSelfUriPermission(uri2, 1) != 0 || TextUtils.isEmpty(RangesKt.queryForString(context2, uri2, "mime_type"))) {
                    break;
                }
                break;
        }
        return false;
    }

    @Override // org.koin.core.logger.Logger
    public final boolean canWrite() {
        switch (this.$r8$classId) {
        }
        return RangesKt.canWrite(this.mContext, this.mUri);
    }

    @Override // org.koin.core.logger.Logger
    public final Logger createDirectory(String str) {
        Uri uri;
        switch (this.$r8$classId) {
            case 0:
                Context context = this.mContext;
                try {
                    uri = DocumentsContract.createDocument(context.getContentResolver(), this.mUri, "vnd.android.document/directory", str);
                } catch (Exception unused) {
                    uri = null;
                }
                if (uri != null) {
                    return new TreeDocumentFile(this, context, uri);
                }
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // org.koin.core.logger.Logger
    public final Logger createFile(String str, String str2) {
        Uri uri;
        switch (this.$r8$classId) {
            case 0:
                Context context = this.mContext;
                try {
                    uri = DocumentsContract.createDocument(context.getContentResolver(), this.mUri, str, str2);
                } catch (Exception unused) {
                    uri = null;
                }
                if (uri != null) {
                    return new TreeDocumentFile(this, context, uri);
                }
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // org.koin.core.logger.Logger
    public final boolean delete() {
        switch (this.$r8$classId) {
        }
        return DocumentsContract.deleteDocument(this.mContext.getContentResolver(), this.mUri);
    }

    @Override // org.koin.core.logger.Logger
    public final boolean exists() {
        switch (this.$r8$classId) {
        }
        return RangesKt.exists(this.mContext, this.mUri);
    }

    @Override // org.koin.core.logger.Logger
    public final String getName() {
        switch (this.$r8$classId) {
        }
        return RangesKt.queryForString(this.mContext, this.mUri, "_display_name");
    }

    @Override // org.koin.core.logger.Logger
    public final String getType() {
        switch (this.$r8$classId) {
            case 0:
                String queryForString = RangesKt.queryForString(this.mContext, this.mUri, "mime_type");
                if ("vnd.android.document/directory".equals(queryForString)) {
                    return null;
                }
                return queryForString;
            default:
                String queryForString2 = RangesKt.queryForString(this.mContext, this.mUri, "mime_type");
                if ("vnd.android.document/directory".equals(queryForString2)) {
                    return null;
                }
                return queryForString2;
        }
    }

    @Override // org.koin.core.logger.Logger
    public final Uri getUri() {
        switch (this.$r8$classId) {
        }
        return this.mUri;
    }

    @Override // org.koin.core.logger.Logger
    public final boolean isDirectory() {
        switch (this.$r8$classId) {
        }
        return "vnd.android.document/directory".equals(RangesKt.queryForString(this.mContext, this.mUri, "mime_type"));
    }

    @Override // org.koin.core.logger.Logger
    public final boolean isFile() {
        switch (this.$r8$classId) {
            case 0:
                String queryForString = RangesKt.queryForString(this.mContext, this.mUri, "mime_type");
                if ("vnd.android.document/directory".equals(queryForString) || TextUtils.isEmpty(queryForString)) {
                }
                break;
            default:
                String queryForString2 = RangesKt.queryForString(this.mContext, this.mUri, "mime_type");
                if ("vnd.android.document/directory".equals(queryForString2) || TextUtils.isEmpty(queryForString2)) {
                }
                break;
        }
        return false;
    }

    @Override // org.koin.core.logger.Logger
    public final long length() {
        switch (this.$r8$classId) {
        }
        return RangesKt.queryForLong(this.mContext, this.mUri, "_size", 0L);
    }

    @Override // org.koin.core.logger.Logger
    public final Logger[] listFiles() {
        switch (this.$r8$classId) {
            case 0:
                Context context = this.mContext;
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = this.mUri;
                Uri buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
                ArrayList arrayList = new ArrayList();
                Cursor cursor = null;
                try {
                    try {
                        try {
                            cursor = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                            while (cursor.moveToNext()) {
                                arrayList.add(DocumentsContract.buildDocumentUriUsingTree(uri, cursor.getString(0)));
                            }
                            try {
                                Owner.CC.m(cursor);
                            } catch (RuntimeException e) {
                                throw e;
                            }
                        } catch (Throwable th) {
                            if (cursor == null) {
                                throw th;
                            }
                            try {
                                Owner.CC.m(cursor);
                                throw th;
                            } catch (RuntimeException e2) {
                                throw e2;
                            } catch (Exception unused) {
                                throw th;
                            }
                        }
                    } catch (Exception e3) {
                        Log.w("DocumentFile", "Failed query: " + e3);
                        if (cursor != null) {
                            try {
                                Owner.CC.m(cursor);
                            } catch (RuntimeException e4) {
                                throw e4;
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[0]);
                Logger[] loggerArr = new Logger[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    loggerArr[i] = new TreeDocumentFile(this, context, uriArr[i]);
                }
                return loggerArr;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public /* synthetic */ TreeDocumentFile(Logger logger) {
        super(logger);
    }
}
