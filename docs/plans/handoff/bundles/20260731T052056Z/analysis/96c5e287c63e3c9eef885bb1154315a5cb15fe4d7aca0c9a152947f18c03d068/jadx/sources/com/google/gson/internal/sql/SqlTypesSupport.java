package com.google.gson.internal.sql;

import com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType;
import com.google.gson.internal.bind.TypeAdapters;
import java.sql.Date;
import java.sql.Timestamp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SqlTypesSupport {
    public static final TypeAdapters.AnonymousClass29 DATE_FACTORY;
    public static final boolean SUPPORTS_SQL_TYPES;
    public static final TypeAdapters.AnonymousClass29 TIMESTAMP_FACTORY;
    public static final TypeAdapters.AnonymousClass29 TIME_FACTORY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.gson.internal.sql.SqlTypesSupport$1, reason: invalid class name */
    public final class AnonymousClass1 extends DefaultDateTypeAdapter$DateType {
    }

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        SUPPORTS_SQL_TYPES = z;
        if (!z) {
            DATE_FACTORY = null;
            TIME_FACTORY = null;
            TIMESTAMP_FACTORY = null;
            return;
        }
        final Class<Date> cls = Date.class;
        new AnonymousClass1(cls);
        final Class<Timestamp> cls2 = Timestamp.class;
        new AnonymousClass1(cls2);
        DATE_FACTORY = SqlDateTypeAdapter.FACTORY;
        TIME_FACTORY = SqlDateTypeAdapter.FACTORY$1;
        TIMESTAMP_FACTORY = SqlDateTypeAdapter.FACTORY$2;
    }
}
