package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class UserContribution {
    public final String comment;
    public final boolean minor;

    /* renamed from: new, reason: not valid java name */
    public final boolean f29new;
    public final int ns;
    public final int pageid;
    public final long parentid;
    public final SynchronizedLazyImpl parsedDateTime$delegate;
    public final long revid;
    public final int size;
    public final int sizediff;
    public final List tags;
    public final String timestamp;
    public final String title;
    public final boolean top;
    public final String user;
    public final int userid;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(12))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return UserContribution$$serializer.INSTANCE;
        }
    }

    public UserContribution(int i, int i2, String str, int i3, long j, long j2, int i4, String str2, String str3, String str4, boolean z, boolean z2, boolean z3, int i5, int i6, List list) {
        if ((i & 1) == 0) {
            this.userid = 0;
        } else {
            this.userid = i2;
        }
        if ((i & 2) == 0) {
            this.user = "";
        } else {
            this.user = str;
        }
        if ((i & 4) == 0) {
            this.pageid = 0;
        } else {
            this.pageid = i3;
        }
        if ((i & 8) == 0) {
            this.revid = 0L;
        } else {
            this.revid = j;
        }
        if ((i & 16) == 0) {
            this.parentid = 0L;
        } else {
            this.parentid = j2;
        }
        if ((i & 32) == 0) {
            this.ns = 0;
        } else {
            this.ns = i4;
        }
        if ((i & 64) == 0) {
            this.title = "";
        } else {
            this.title = str2;
        }
        if ((i & 128) == 0) {
            this.timestamp = "";
        } else {
            this.timestamp = str3;
        }
        if ((i & 256) == 0) {
            this.comment = "";
        } else {
            this.comment = str4;
        }
        if ((i & 512) == 0) {
            this.f29new = false;
        } else {
            this.f29new = z;
        }
        if ((i & 1024) == 0) {
            this.minor = false;
        } else {
            this.minor = z2;
        }
        if ((i & 2048) == 0) {
            this.top = false;
        } else {
            this.top = z3;
        }
        if ((i & 4096) == 0) {
            this.size = 0;
        } else {
            this.size = i5;
        }
        if ((i & 8192) == 0) {
            this.sizediff = 0;
        } else {
            this.sizediff = i6;
        }
        this.tags = (i & 16384) == 0 ? EmptyList.INSTANCE : list;
        this.parsedDateTime$delegate = new SynchronizedLazyImpl(new WikiGames$$ExternalSyntheticLambda0(3, this));
    }
}
