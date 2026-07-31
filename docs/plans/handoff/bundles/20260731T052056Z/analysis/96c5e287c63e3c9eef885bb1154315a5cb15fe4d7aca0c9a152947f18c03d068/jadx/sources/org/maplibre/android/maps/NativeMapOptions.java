package org.maplibre.android.maps;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class NativeMapOptions {
    private final boolean actionJournalEnabled;
    private final long actionJournalLogFileCount;
    private final long actionJournalLogFileSize;
    private final String actionJournalPath;
    private final int actionJournalRenderingReportInterval;
    private final boolean crossSourceCollisions;
    private final float pixelRatio;

    public NativeMapOptions(MapLibreMapOptions mapLibreMapOptions) {
        this.pixelRatio = mapLibreMapOptions.pixelRatio;
        this.crossSourceCollisions = mapLibreMapOptions.crossSourceCollisions;
        this.actionJournalEnabled = mapLibreMapOptions.actionJournalEnabled;
        this.actionJournalPath = mapLibreMapOptions.actionJournalPath;
        this.actionJournalLogFileSize = mapLibreMapOptions.actionJournalLogFileSize;
        this.actionJournalLogFileCount = mapLibreMapOptions.actionJournalLogFileCount;
        this.actionJournalRenderingReportInterval = mapLibreMapOptions.actionJournalRenderingReportInterval;
    }

    public boolean actionJournalEnabled() {
        return this.actionJournalEnabled;
    }

    public long actionJournalLogFileCount() {
        return this.actionJournalLogFileCount;
    }

    public long actionJournalLogFileSize() {
        return this.actionJournalLogFileSize;
    }

    public String actionJournalPath() {
        return this.actionJournalPath;
    }

    public int actionJournalRenderingReportInterval() {
        return this.actionJournalRenderingReportInterval;
    }

    public boolean crossSourceCollisions() {
        return this.crossSourceCollisions;
    }

    public float pixelRatio() {
        return this.pixelRatio;
    }

    public NativeMapOptions(float f, boolean z) {
        this.pixelRatio = f;
        this.crossSourceCollisions = z;
        this.actionJournalEnabled = false;
        this.actionJournalPath = "";
        this.actionJournalLogFileSize = 0L;
        this.actionJournalLogFileCount = 0L;
        this.actionJournalRenderingReportInterval = 0;
    }
}
