package org.wikipedia.analytics;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.util.MathUtil$Averaged;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SessionData {
    public static final Companion Companion = new Companion();
    public long lastTouchTime;
    public final MathUtil$Averaged pageLatency = new MathUtil$Averaged();
    public int pagesFromBack;
    public int pagesFromExternal;
    public int pagesFromHistory;
    public int pagesFromInternal;
    public int pagesFromLangLink;
    public int pagesFromRandom;
    public int pagesFromReadingList;
    public int pagesFromSearch;
    public int pagesFromSuggestedEdits;
    public int pagesWithNoDescription;
    public final long startTime;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SessionData$$serializer.INSTANCE;
        }
    }

    public SessionData(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.startTime = 0L;
        this.lastTouchTime = 0L;
        if ((i & 4) == 0) {
            this.pagesFromSearch = 0;
        } else {
            this.pagesFromSearch = i2;
        }
        if ((i & 8) == 0) {
            this.pagesFromRandom = 0;
        } else {
            this.pagesFromRandom = i3;
        }
        if ((i & 16) == 0) {
            this.pagesFromLangLink = 0;
        } else {
            this.pagesFromLangLink = i4;
        }
        if ((i & 32) == 0) {
            this.pagesFromInternal = 0;
        } else {
            this.pagesFromInternal = i5;
        }
        if ((i & 64) == 0) {
            this.pagesFromExternal = 0;
        } else {
            this.pagesFromExternal = i6;
        }
        if ((i & 128) == 0) {
            this.pagesFromHistory = 0;
        } else {
            this.pagesFromHistory = i7;
        }
        if ((i & 256) == 0) {
            this.pagesFromReadingList = 0;
        } else {
            this.pagesFromReadingList = i8;
        }
        if ((i & 512) == 0) {
            this.pagesFromBack = 0;
        } else {
            this.pagesFromBack = i9;
        }
        if ((i & 1024) == 0) {
            this.pagesWithNoDescription = 0;
        } else {
            this.pagesWithNoDescription = i10;
        }
        if ((i & 2048) == 0) {
            this.pagesFromSuggestedEdits = 0;
        } else {
            this.pagesFromSuggestedEdits = i11;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.startTime = currentTimeMillis;
        this.lastTouchTime = currentTimeMillis;
    }

    public final int getTotalPages() {
        return this.pagesFromSearch + this.pagesFromRandom + this.pagesFromLangLink + this.pagesFromInternal + this.pagesFromExternal + this.pagesFromHistory + this.pagesFromReadingList + this.pagesFromSuggestedEdits;
    }

    public SessionData() {
        long currentTimeMillis = System.currentTimeMillis();
        this.startTime = currentTimeMillis;
        this.lastTouchTime = currentTimeMillis;
    }
}
