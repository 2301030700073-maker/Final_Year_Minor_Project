package org.schabi.newpipe.extractor;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.utils.JavaScript;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Info implements Serializable {
    private final List<Throwable> errors = new ArrayList();
    private final String id;
    private final String name;
    private String originalUrl;
    private final int serviceId;
    private final String url;

    public Info(int i, String str, String str2, String str3, String str4) {
        this.serviceId = i;
        this.id = str;
        this.url = str2;
        this.originalUrl = str3;
        this.name = str4;
        JavaScript.d("Base Created {}", this);
    }

    public final void addAllErrors(List list) {
        this.errors.addAll(list);
    }

    public final void addError(Exception exc) {
        this.errors.add(exc);
    }

    public final List getErrors() {
        return this.errors;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public final StreamingService getService() {
        try {
            return Utility.getService(this.serviceId);
        } catch (ExtractionException e) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Info object has invalid service id", e);
            return null;
        }
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setOriginalUrl(String str) {
        this.originalUrl = str;
    }

    public String toString() {
        String m = this.url.equals(this.originalUrl) ? "" : Modifier.CC.m(" (originalUrl=\"", this.originalUrl, "\")");
        return getClass().getSimpleName() + "[url=\"" + this.url + "\"" + m + ", name=\"" + this.name + "\"]";
    }
}
