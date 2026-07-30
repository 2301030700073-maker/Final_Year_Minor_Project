package com.facebook.appevents;

import android.content.Context;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;

/* loaded from: classes.dex */
public final class AppEventDiskStore {
    private static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    public static final AppEventDiskStore INSTANCE = new AppEventDiskStore();
    private static final String TAG = AppEventDiskStore.class.getName();

    public static final class MovedClassObjectInputStream extends ObjectInputStream {
        private static final String ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
        private static final String APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2";
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }
        }

        public MovedClassObjectInputStream(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public ObjectStreamClass readClassDescriptor() {
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (C0173Do.m394do(readClassDescriptor.getName(), ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                readClassDescriptor = ObjectStreamClass.lookup(AccessTokenAppIdPair.SerializationProxyV1.class);
            } else if (C0173Do.m394do(readClassDescriptor.getName(), APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                readClassDescriptor = ObjectStreamClass.lookup(AppEvent.SerializationProxyV2.class);
            }
            C0173Do.m399new(readClassDescriptor, "resultClassDescriptor");
            return readClassDescriptor;
        }
    }

    private AppEventDiskStore() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f A[Catch: all -> 0x0076, TRY_ENTER, TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0003, B:12:0x0028, B:14:0x002b, B:17:0x006f, B:34:0x0045, B:36:0x0048, B:37:0x0051, B:31:0x0053, B:32:0x0056, B:28:0x005c, B:26:0x0063, B:27:0x0066), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final synchronized com.facebook.appevents.PersistedEvents readAndClearStore() {
        /*
            java.lang.Class<com.facebook.appevents.AppEventDiskStore> r0 = com.facebook.appevents.AppEventDiskStore.class
            monitor-enter(r0)
            com.facebook.appevents.internal.AppEventUtility.assertIsNotMainThread()     // Catch: java.lang.Throwable -> L76
            android.content.Context r1 = defpackage.C3756th.m8299do()     // Catch: java.lang.Throwable -> L76
            r2 = 0
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.FileInputStream r3 = r1.openFileInput(r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            java.lang.String r4 = "context.openFileInput(PERSISTED_EVENTS_FILENAME)"
            defpackage.C0173Do.m399new(r3, r4)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream r4 = new com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L52 java.io.FileNotFoundException -> L62
            java.lang.Object r3 = r4.readObject()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L53 java.io.FileNotFoundException -> L63
            if (r3 == 0) goto L38
            com.facebook.appevents.PersistedEvents r3 = (com.facebook.appevents.PersistedEvents) r3     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L53 java.io.FileNotFoundException -> L63
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> L76
            java.lang.String r2 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r2)     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L76
            r1.delete()     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L76
            goto L36
        L35:
        L36:
            r2 = r3
            goto L6d
        L38:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L53 java.io.FileNotFoundException -> L63
            java.lang.String r5 = "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L53 java.io.FileNotFoundException -> L63
            throw r3     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L53 java.io.FileNotFoundException -> L63
        L40:
            r2 = move-exception
            goto L45
        L42:
            r3 = move-exception
            r4 = r2
            r2 = r3
        L45:
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L76
            r1.delete()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L76
        L51:
            throw r2     // Catch: java.lang.Throwable -> L76
        L52:
            r4 = r2
        L53:
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L76
        L5c:
            r1.delete()     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L76
            goto L6d
        L60:
            goto L6d
        L62:
            r4 = r2
        L63:
            com.facebook.internal.Utility.closeQuietly(r4)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L76
            goto L5c
        L6d:
            if (r2 != 0) goto L74
            com.facebook.appevents.PersistedEvents r2 = new com.facebook.appevents.PersistedEvents     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
        L74:
            monitor-exit(r0)
            return r2
        L76:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventDiskStore.readAndClearStore():com.facebook.appevents.PersistedEvents");
    }

    public static final void saveEventsToDisk$facebook_core_release(PersistedEvents persistedEvents) {
        Context m8299do = C3756th.m8299do();
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(m8299do.openFileOutput(PERSISTED_EVENTS_FILENAME, 0)));
            try {
                objectOutputStream2.writeObject(persistedEvents);
                Utility.closeQuietly(objectOutputStream2);
            } catch (Throwable unused) {
                objectOutputStream = objectOutputStream2;
                try {
                    m8299do.getFileStreamPath(PERSISTED_EVENTS_FILENAME).delete();
                } catch (Exception unused2) {
                } catch (Throwable th) {
                    Utility.closeQuietly(objectOutputStream);
                    throw th;
                }
                Utility.closeQuietly(objectOutputStream);
            }
        } catch (Throwable unused3) {
        }
    }
}
