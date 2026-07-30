package com.google.android.material.shape;

import com.android.contacts.ContactPhotoManager;

/* loaded from: classes.dex */
public class EdgeTreatment implements Cloneable {
    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        shapePath.lineTo(f, ContactPhotoManager.OFFSET_DEFAULT);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public EdgeTreatment m4clone() {
        try {
            return (EdgeTreatment) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
