/*
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
 * 
 * This file is part of HxSignal
 * 
 * Copyright (C) 2013 German Allemand
 * 
 * HxSignal is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 * 
 * HxSignal is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; If not, see <http://www.gnu.org/licenses/>.
 */
package hxsignal.ds;

import haxe.ds.BalancedTree;

class TreeMap<K, V> extends BalancedTree<K, V>
{
	public function firstKey() : Null<K>
	{
		var first = getFirstNode();
		return if (first != null) first.key else null;
	}
	
	public function lastKey() : Null<K>
	{
		var last = getLastNode();
		return if (last != null) last.key else null;
	}
	
	
	public function firstValue() : Null<V>
	{
		var first = getFirstNode();
		return if (first != null) first.value else null;
	}
	
	public function lastValue() : Null<V>
	{
		var last = getLastNode();
		return if (last != null) last.value else null;
	}
	
	function getFirstNode() : TreeNode<K,V>
	{
        var n = root;
        if (n != null)
            while (n.left != null)
                n = n.left;
        return n;
    }
	
	function getLastNode() : TreeNode<K,V>
	{
        var n = root;
        if (n != null)
            while (n.right != null)
                n = n.right;
        return n;
    }
}