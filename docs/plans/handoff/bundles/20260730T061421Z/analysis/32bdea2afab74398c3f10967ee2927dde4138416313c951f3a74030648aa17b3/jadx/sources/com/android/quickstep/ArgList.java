package com.android.quickstep;

import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ArgList extends LinkedList {
    public ArgList(List list) {
        super(list);
    }

    public String nextArg() {
        return ((String) pollFirst()).toLowerCase();
    }

    public String peekArg() {
        return (String) peekFirst();
    }
}
