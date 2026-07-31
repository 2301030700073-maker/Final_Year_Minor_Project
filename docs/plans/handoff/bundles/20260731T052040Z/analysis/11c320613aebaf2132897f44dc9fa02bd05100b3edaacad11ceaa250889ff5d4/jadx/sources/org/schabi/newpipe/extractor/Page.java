package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Page implements Serializable {
    private final byte[] body;
    private final Map<String, String> cookies;
    private final String id;
    private final List<String> ids;
    private final String url;

    public Page(String str, String str2, List list, Map map, byte[] bArr) {
        this.url = str;
        this.id = str2;
        this.ids = list;
        this.cookies = map;
        this.body = bArr;
    }

    public static boolean isValid(Page page) {
        if (page != null) {
            return (Utils.isNullOrEmpty(page.url) && Utils.isNullOrEmpty(page.ids)) ? false : true;
        }
        return false;
    }

    public final byte[] getBody() {
        return this.body;
    }

    public final Map getCookies() {
        return this.cookies;
    }

    public final String getId() {
        return this.id;
    }

    public final List getIds() {
        return this.ids;
    }

    public final String getUrl() {
        return this.url;
    }

    public Page(String str) {
        this(str, null, null, null, null);
    }

    public Page(String str, String str2) {
        this(str, str2, null, null, null);
    }

    public Page(byte[] bArr, String str, String str2) {
        this(str, str2, null, null, bArr);
    }

    public Page(List list) {
        this(null, null, list, null, null);
    }
}
