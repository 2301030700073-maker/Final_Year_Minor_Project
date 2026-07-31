package com.bumptech.glide.load.engine;

import com.fsck.k9.mail.Part;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Jobs {
    public HashMap jobs;

    public Jobs(int i) {
        switch (i) {
            case 1:
                this.jobs = new HashMap();
                break;
            case 2:
                this.jobs = new HashMap();
                break;
            case 3:
            default:
                this.jobs = new HashMap();
                new HashMap();
                break;
            case 4:
                this.jobs = new HashMap();
                break;
        }
    }

    public Part findKeyForAnnotationWithReplacementPart(Part part) {
        for (Map.Entry entry : this.jobs.entrySet()) {
            if (part == ((CryptoResultAnnotation) entry.getValue()).replacementData) {
                return (Part) entry.getKey();
            }
        }
        return null;
    }
}
