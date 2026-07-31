package org.wikipedia.dataclient.restbase;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DiffResponse {
    public final List diff;
    public final DiffRevision from;
    public final DiffRevision to;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(19))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DiffResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class DiffOffset {
        public static final Companion Companion = new Companion();
        public final Integer from;
        public final Integer to;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiffResponse$DiffOffset$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ DiffOffset(int i, Integer num, Integer num2) {
            if ((i & 1) == 0) {
                this.from = null;
            } else {
                this.from = num;
            }
            if ((i & 2) == 0) {
                this.to = null;
            } else {
                this.to = num2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class DiffRevision {
        public final long id;
        public final List sections;
        public final String slotRole;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(21))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiffResponse$DiffRevision$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ DiffRevision(int i, long j, String str, List list) {
            this.id = (i & 1) == 0 ? 0L : j;
            if ((i & 2) == 0) {
                this.slotRole = null;
            } else {
                this.slotRole = str;
            }
            if ((i & 4) == 0) {
                this.sections = null;
            } else {
                this.sections = list;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RevisionSection {
        public static final Companion Companion = new Companion();
        public final String heading;
        public final int level;
        public final int offset;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiffResponse$RevisionSection$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RevisionSection(int i, int i2, int i3, String str) {
            if ((i & 1) == 0) {
                this.level = 0;
            } else {
                this.level = i2;
            }
            if ((i & 2) == 0) {
                this.heading = null;
            } else {
                this.heading = str;
            }
            if ((i & 4) == 0) {
                this.offset = 0;
            } else {
                this.offset = i3;
            }
        }
    }

    public /* synthetic */ DiffResponse(int i, DiffRevision diffRevision, DiffRevision diffRevision2, List list) {
        if ((i & 1) == 0) {
            this.from = null;
        } else {
            this.from = diffRevision;
        }
        if ((i & 2) == 0) {
            this.to = null;
        } else {
            this.to = diffRevision2;
        }
        if ((i & 4) == 0) {
            this.diff = EmptyList.INSTANCE;
        } else {
            this.diff = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class HighlightRange {
        public static final Companion Companion = new Companion();
        public final int length;
        public final int start;
        public final int type;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiffResponse$HighlightRange$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ HighlightRange(int i, int i2, int i3, int i4) {
            if ((i & 1) == 0) {
                this.start = 0;
            } else {
                this.start = i2;
            }
            if ((i & 2) == 0) {
                this.length = 0;
            } else {
                this.length = i3;
            }
            if ((i & 4) == 0) {
                this.type = 0;
            } else {
                this.type = i4;
            }
        }

        public HighlightRange() {
            this.start = 0;
            this.length = 0;
            this.type = 0;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class DiffItem {
        public final List highlightRanges;
        public final int lineNumber;
        public final DiffOffset offset;
        public final String text;
        public final int type;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(20))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return DiffResponse$DiffItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ DiffItem(int i, int i2, int i3, String str, DiffOffset diffOffset, List list) {
            this.type = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.lineNumber = -1;
            } else {
                this.lineNumber = i3;
            }
            if ((i & 4) == 0) {
                this.text = "";
            } else {
                this.text = str;
            }
            if ((i & 8) == 0) {
                this.offset = null;
            } else {
                this.offset = diffOffset;
            }
            if ((i & 16) == 0) {
                this.highlightRanges = EmptyList.INSTANCE;
            } else {
                this.highlightRanges = list;
            }
        }

        public DiffItem(String str, List list) {
            str.getClass();
            this.type = 1;
            this.lineNumber = 1;
            this.text = str;
            this.offset = null;
            this.highlightRanges = list;
        }
    }
}
