package org.schabi.newpipe.extractor.services.peertube;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeInstance {
    public static final PeertubeInstance DEFAULT_INSTANCE = new PeertubeInstance("https://framatube.org", "FramaTube");
    public String name;
    public final String url;

    public PeertubeInstance(String str) {
        this.url = str;
        this.name = "PeerTube";
    }

    public PeertubeInstance(String str, String str2) {
        this.url = str;
        this.name = str2;
    }
}
