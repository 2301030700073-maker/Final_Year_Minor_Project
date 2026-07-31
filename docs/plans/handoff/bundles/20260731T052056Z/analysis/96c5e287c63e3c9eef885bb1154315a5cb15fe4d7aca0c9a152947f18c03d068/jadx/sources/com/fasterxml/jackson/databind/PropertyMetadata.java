package com.fasterxml.jackson.databind;

import androidx.work.OperationKt;
import com.fasterxml.jackson.annotation.Nulls;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertyMetadata implements Serializable {
    public final Nulls _contentNulls;
    public final String _defaultValue;
    public final Integer _index;
    public final Boolean _required;
    public final Nulls _valueNulls;
    public static final PropertyMetadata STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null, null, null, null, null, null);

    public PropertyMetadata(Boolean bool, String str, Integer num, String str2, OperationKt operationKt, Nulls nulls, Nulls nulls2) {
        this._required = bool;
        this._index = num;
        this._defaultValue = (str2 == null || str2.isEmpty()) ? null : str2;
        this._valueNulls = nulls;
        this._contentNulls = nulls2;
    }
}
